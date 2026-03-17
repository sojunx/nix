{ pkgs, ... }:

{
  services.pulseaudio.enable = false;
  services.blueman.enable = true;

  hardware.bluetooth = { 
    enable = true;
    powerOnBoot = true;
  };

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
}
