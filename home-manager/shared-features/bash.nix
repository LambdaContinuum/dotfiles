{
  pkgs,
  config,
  ...
}: {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''eval "$(direnv hook bash)"
                    PS1='\[\e[1;32m\][λ:\W]\$ \[\e[0m\]' '';
  };
}
