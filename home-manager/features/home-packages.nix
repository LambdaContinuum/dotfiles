{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    htop
    swww
    equibop
    firefox
    grim
    slurp
    wl-clipboard
    swappy

  ];

}

