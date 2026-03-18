{ pkgs, ... }:

{
  # Required packages
  environment.systemPackages = with pkgs; [ 
    kitty # Terminal 
    waybar # Status bar
    wofi # Application launcher
    nautilus # File manager
    wl-clipboard # Copy / Paste
  ];
  
  # Enable Hyprland
  programs.hyprland = { 
    enable = true;  
    xwayland.enable = true;
    withUWSM = true;
  };

  # Enabel XDG Portal
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

  # Enable Policy Kit
  security.polkit.enable = true;
}
