{ pkgs, ... }: 

{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/darkviolet.yaml";
  stylix.image = ./sicp-ascii.png;

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
