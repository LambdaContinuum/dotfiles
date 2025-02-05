{
services.mpd = {
  enable = true;
  musicDirectory = "~/Music";
  network = {
    startWhenNeeded = true;
  };
  extraConfig = ''
  audio_output {
    type "pipewire"
    name "My PipeWire Output"
  }
  audio_output {
    type                    "fifo"
    name                    "my_fifo"
    path                    "/tmp/mpd.fifo"
    format                  "44100:16:2"
  }
  '';

};
}
