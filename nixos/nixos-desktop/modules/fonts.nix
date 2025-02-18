{ pkgs, ... }:

{
 fonts.packages = with pkgs; [
   iosevka
   scientifica
   terminus_font_ttf
   mno16
   font-awesome
   font-awesome_5
   nerd-fonts.symbols-only
];
}
