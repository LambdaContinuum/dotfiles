{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    htop
    swww
    equibop
    grim
    slurp
    wl-clipboard
    swappy
    librewolf
    gimp 
  ];

}

