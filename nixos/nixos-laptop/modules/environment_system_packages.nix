{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    vim
    curl
    bash
    killall
    coreutils-full
    inotify-tools
    libvirt-glib
  ];
}
