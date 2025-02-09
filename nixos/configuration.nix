# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./modules/sound.nix
    ./modules/locale.nix
    ./modules/bootloader.nix
    ./modules/network.nix
    ./modules/bluetooth.nix
    ./modules/user.nix
    ./modules/unfree_packages.nix
    ./modules/displaymanager.nix
    ./modules/environment_system_packages.nix
    ./modules/fonts.nix
    ./modules/enable_flakes.nix
    ./modules/hyprland.nix
    ./modules/swap.nix
    ./modules/nvidia.nix
    ./modules/nix.nix
    ./modules/stylix/stylix.nix
    ./modules/i2p.nix
    ];

  system.stateVersion = "24.11"; # Did you read the comment?

}
