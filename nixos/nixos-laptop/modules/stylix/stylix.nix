{ pkgs, ... }: 

{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
  stylix.image = ./wp.jpg;

  stylix.cursor.package = pkgs.rose-pine-cursor;
  stylix.cursor.name = "BreezeX-RosePine-Linux";
  stylix.cursor.size = 20;


  stylix.fonts = {
    monospace = {
      package = pkgs.terminus_font_ttf;
      name = "Terminus (TTF)";
    };
    sansSerif = {
      package = pkgs.terminus_font_ttf;
      name = "Terminus (TTF)";
    };
    serif = {
      package = pkgs.terminus_font_ttf;
      name = "Terminus (TTF)";
    };
  };
}
