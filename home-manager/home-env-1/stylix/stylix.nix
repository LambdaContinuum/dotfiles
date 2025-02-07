{ pkgs, ... }: 

{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
  stylix.image = ./cherry-blossom.png;

  stylix.cursor.package = pkgs.volantes-cursors;
  stylix.cursor.name = "volantes_cursors";
  stylix.cursor.size = 20;

  stylix.targets.waybar.enable = false;

  stylix.fonts = {
    monospace = {
      package = pkgs.mno16;
      name = "MnO16";
    };
    sansSerif = {
      package = pkgs.mno16;
      name = "Mno16";
    };
    serif = {
      package = pkgs.mno16;
      name = "Mno16";
    };
  };
}
