{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    htop
    swww
    legcord
    grim
    slurp
    wl-clipboard
    swappy
    librewolf
    gimp
    keepassxc
    lutris
    blueberry
  ];

}

