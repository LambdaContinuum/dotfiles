{ config, pkgs, ... }:

{
  imports = [
    ./modules/kitty.nix
    ./modules/wofi/wofi.nix
    ./modules/hyprland/hyprland.nix
    ./modules/waybar/waybar.nix
    ./modules/home-packages.nix
    ./modules/stylix/stylix.nix
    ./modules/lf.nix
    ./modules/direnv.nix
    ./modules/zellij.nix
    ./modules/bash.nix
    ./modules/mpd.nix
    ./modules/ncmpcpp.nix
    ./modules/git.nix
    ./modules/firefox.nix
  ];

  home.username = "azad";
  home.homeDirectory = "/home/azad";
  home.stateVersion = "24.11"; # Please read the comment before changing.

  programs.home-manager.enable = true;
}
