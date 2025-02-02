{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    htop
    swww
    legcord
    firefox
    grim
    slurp
    wl-clipboard
    swappy

  ];

}

