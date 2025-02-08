{config, pkgs, inputs, ...}:

{
  programs.firefox = {
    enable = true;
    profiles.default = {
	extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
	  ublock-origin
	  sponsorblock
	  youtube-shorts-block
	];
        bookmarks = [
	{
	 name = "Sites";
	 toolbar = true;
 	 bookmarks = [
            {
	      name = "NixOS Discourse";
	      url = "https://discourse.nixos.org/";
            }
            {
	      name = "NixOS Search";
	      url = "https://search.nixos.org/packages";
	    }
	    {
	       name = "Tree Proof Generator";
	       url = "https://www.umsu.de/trees/";
	    }
	    {
	       name = "Modal Logic Playground";
	       url = "https://rkirsling.github.io/modallogic/";
	    }
	];
	}
        ];
    };	
  };
}
