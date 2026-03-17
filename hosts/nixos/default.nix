{ config, lib, pkgs, ... }:

{
  imports = [ 
    ../core.nix
    ./hardware-configuration.nix
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # Define hostname
  networking.hostName = "nixos";

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # DO NOT CHANGE
  system.stateVersion = "25.11"; 
}

