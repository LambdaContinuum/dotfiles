{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    vim
    gnupg
    curl
    bash
    killall
    coreutils-full
    inotify-tools
    libvirt-glib
  ];
}
