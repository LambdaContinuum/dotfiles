{ pkgs, ... }: 

{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/horizon-dark.yaml";
  stylix.image = ./sicp-ascii.png;

  stylix.cursor.package = pkgs.rose-pine-cursor;
  stylix.cursor.name = "BreezeX-RosePine-Linux";
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
