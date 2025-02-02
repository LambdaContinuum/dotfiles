{ pkgs, ... }:

{
 fonts.packages = with pkgs; [
   iosevka
   font-awesome
   font-awesome_5
   nerd-fonts.symbols-only
];
}
