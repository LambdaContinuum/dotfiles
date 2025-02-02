{ config, pkgs, ... }:

{
  imports = [
    ./features/kitty.nix
    ./features/wofi/wofi.nix
    ./features/hyprland/hyprland.nix
    ./features/waybar/waybar.nix
    ./features/home-packages.nix
    ./features/stylix/stylix.nix
    ./features/lf.nix
    ./features/direnv.nix
    ./features/zellij.nix
    ./features/bash.nix
    ./features/mpd.nix
    ./features/ncmpcpp.nix
    ./features/git.nix
  ];

  home.username = "azad";
  home.homeDirectory = "/home/azad";
  home.stateVersion = "24.11"; # Please read the comment before changing.

  programs.home-manager.enable = true;
}
