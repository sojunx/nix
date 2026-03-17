{ pkgs, ... }:

{
  imports = [ ../../modules/home-manager ];
 
  home.username = "sojunx";
  home.homeDirectory = "/home/sojunx";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [ fastfetch ];

  programs.home-manager.enable = true;
}
