{ pkgs, ... }:

{
 users.users.azad = {
   isNormalUser = true;
   description = "Azad";
   extraGroups = [ "networkmanager" "wheel" "video" "audio" "lp" "scanner" "libvirtd"];
   packages = with pkgs; [];
 };
}
