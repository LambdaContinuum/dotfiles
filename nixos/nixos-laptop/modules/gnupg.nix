{ pkgs, ...}:

{
        services.pcscd.enable = true;
        programs.gnupg.agent = {
                enable = true;
                pinentryPackage = pkgs.pinentry-all;
                enableSSHSupport = true;
        };
}
