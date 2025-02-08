{ config, pkgs, ... }:

{
    programs.git = {
    enable = true;
    userName = "LambdaContinuum";
    userEmail = "azad.r.ellafi@gmail.com";

    extraConfig = {
     # Sign all commits using ssh key
        commit.gpgsign = true;
        gpg.format = "ssh";
        user.signingkey = "~/.ssh/id_ed25519.pub";
      };
  };
}
