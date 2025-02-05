{ config, pkgs, ... }:

{
  imports = [
    ./shared-features/kitty.nix
    ./shared-features/wofi/wofi.nix
    ./home-env-1/hyprland/hyprland.nix
    ./home-env-1/waybar/waybar.nix
    ./shared-features/home-packages.nix
    ./home-env-1/stylix/stylix.nix
    ./shared-features/lf.nix
    ./shared-features/direnv.nix
    ./shared-features/zellij.nix
    ./shared-features/bash.nix
    ./shared-features/mpd.nix
    ./shared-features/ncmpcpp.nix
    ./shared-features/git.nix
  ];

  home.username = "azad";
  home.homeDirectory = "/home/azad";
  home.stateVersion = "24.11"; # Please read the comment before changing.

  programs.home-manager.enable = true;
}
