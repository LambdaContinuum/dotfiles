# Configures keymap in X11, enables displaymanager and XFCE.
{
  services = {
    displayManager = {
     ly.enable = true;
     ly.settings = {
        save = true;
	animation = "doom";
     }; 
    };
    xserver = {
      xkb = {
	layout = "us";
	variant = "";
	};
      enable = true;
      desktopManager.gnome.enable = true;
    };
  };
}
