{ pkgs, ... }: 

{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
  stylix.image = ./purpletrees.png;

  stylix.cursor.package = pkgs.volantes-cursors;
  stylix.cursor.name = "volantes_cursors"; 
  stylix.cursor.size = 20;

  stylix.targets.waybar.enable = false;

  stylix.fonts = {
    monospace = {
      package = pkgs.iosevka;
      name = "Iosevka";
    };
    sansSerif = {
      package = pkgs.iosevka;
      name = "Iosevka";
    };
    serif = {
      package = pkgs.iosevka;
      name = "Iosevka";
    };
  };
}
