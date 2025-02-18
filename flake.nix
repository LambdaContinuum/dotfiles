{
  description = "My Flake Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";

    firefox-addons.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    firefox-addons.inputs.nixpkgs.follows = "nixpkgs";

    nvf.url = "github:notashelf/nvf";

  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    system = "x_86_64-linux";
  in {
    nixosConfigurations = {
      nixos-laptop = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs system; };
        modules = [
		./nixos/nixos-laptop/configuration.nix
		inputs.stylix.nixosModules.stylix
	];
      };
      nixos-desktop = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs system; };
        modules = [
                ./nixos/nixos-desktop/configuration.nix
                inputs.stylix.nixosModules.stylix
        ];
      };
    };

    homeConfigurations = {
      "azad@nixos-laptop" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = {inherit inputs;};
        modules = [
        ./home-manager/home-manager-laptop/home.nix
        inputs.stylix.homeManagerModules.stylix
	inputs.nvf.homeManagerModules.default
        ];
      };
      "azad@nixos-desktop" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = {inherit inputs;};
        modules = [
        ./home-manager/home-manager-desktop/home.nix
        inputs.stylix.homeManagerModules.stylix
        inputs.nvf.homeManagerModules.default
        ];
      };
    };

  };
}
