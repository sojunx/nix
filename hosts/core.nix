{ pkgs, lib, ... }:

{ 
  # Import system-wide custom config
  imports = [ ../modules/nixos ];

  # Defind user account
  users.users.sojunx = {
    description = "Phat Le Hiep";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" ];
  };
   
  # Enable flakes feature 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Set time zone.
  time.timeZone = "Asia/Ho_Chi_Minh";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable Zsh
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # Enable FireFox 
  programs.firefox.enable = true;

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    tree
  ];
}
