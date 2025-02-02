{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    vim
    gnupg
    curl
    bash
    coreutils-full
  ];
}
