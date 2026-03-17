{ pkgs, ... }:

{
  # Install fonts
  fonts.packages = with pkgs; [
    nerd-fonts.inconsolata
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
  ];
}
