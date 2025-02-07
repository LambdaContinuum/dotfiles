{ pkgs, ... }: 

{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
  stylix.image = ./purpletrees.png;

  stylix.cursor.package = pkgs.catppuccin-cursors.mochaDark;
  stylix.cursor.name = "catppuccin-mocha-dark-cursors";
  stylix.cursor.size = 18;
  stylix.fonts = {
    monospace = {
      package = pkgs.scientifica;
      name = "scientifica";
    };
    sansSerif = {
      package = pkgs.scientifica;
      name = "scientifica";
    };
    serif = {
      package = pkgs.scientifica;
      name = "scientifica";
    };
  };
}
