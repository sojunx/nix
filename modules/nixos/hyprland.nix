{ pkgs, ... }:

{
  # Required packages
  environment.systemPackages = with pkgs; [ 
    kitty # Terminal 
    waybar # Status bar
    rofi # Application launcher
    nautilus # File manager
  ];
  
  # Enable Hyprland
  programs.hyprland.enable = true;  
  programs.hyprland.xwayland.enable = true;

}
