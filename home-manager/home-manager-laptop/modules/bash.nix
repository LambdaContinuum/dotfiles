{
  pkgs,
  config,
  ...
}: {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''eval "$(direnv hook bash)"'';
  };
}
