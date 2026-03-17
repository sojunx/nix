{ pkgs, ... }:

{
  # Required packages
  environment.systemPackages = with pkgs; [ 
    kitty # Terminal 
    waybar # Status bar
    rofi # Application launcher
    nautilus # File manager
  ];
  
  # Enable XDG-DESKTOP-PORTAL-HYPRLAND
  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };

  # Enable login management
  services.displayManager.sddm = { 
    enable = true;
    wayland.enable = true;
  };

  # Enable Hyprland
  programs.hyprland = { 
    enable = true;  
    xwayland.enable = true;
   };
}
