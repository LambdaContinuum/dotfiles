{ pkgs, ... }:

{
 fonts.packages = with pkgs; [
   iosevka
   scientifica
   mno16
   font-awesome
   font-awesome_5
   nerd-fonts.symbols-only
];
}
