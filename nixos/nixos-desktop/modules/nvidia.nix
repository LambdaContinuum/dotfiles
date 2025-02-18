{ config, lib, pkgs, ... }:
{
  boot.kernelParams = [
      "nvidia-drm.fbdev=1"
  ];

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];
  
  programs.atop = {
      enable = true;
      atopgpu.enable = true;
  };

  hardware = {
    graphics = {
      extraPackages = with pkgs; [
        nvidia-vaapi-driver
        vaapiVdpau
        libvdpau-va-gl
        mesa
        egl-wayland # For hyprland
      ];
    };
  }; 


  hardware.nvidia = {

    # Modesetting is required.
    modesetting.enable = true;

    powerManagement.enable = false;
    powerManagement.finegrained = false;

    open = false;
    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}
