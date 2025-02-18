{ ... }: {
  containers.i2pd-container = {
    autoStart = true;
    config = { ... }: {
      
      networking.firewall.allowedTCPPorts = [
        7070 # default web interface port
        4447 # default socks proxy port
        4444 # default http proxy port
	7656
      ];

      services.i2pd = {
        enable = true;
        address = "127.0.0.1"; # you may want to set this to 0.0.0.0 if you are planning to use an ssh tunnel
        proto = {
          http.enable = true;
          socksProxy.enable = true;
          httpProxy.enable = true;
	  sam.enable = true;
	  i2cp = {
            enable = true;
            address = "127.0.0.1";
            port = 7654;
          };
        };
      };

      system.stateVersion = "23.05"; # If you don't add a state version, nix will complain at every rebuild

    };
  };
}
