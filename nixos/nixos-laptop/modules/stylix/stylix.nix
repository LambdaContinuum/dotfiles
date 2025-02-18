{ pkgs, ... }: 

{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/horizon-dark.yaml";
  stylix.image = ./sicp-ascii.png;

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
