{ pkgs, ... }:

{
  programs.vim = {
    enable = true;
    defaultEditor = true;

    package = pkgs.vim-full.customize {
      name = "vim";

      vimrcConfig.customRC = ''
        set number
        set relativenumber
        syntax on
        set tabstop=2
        set shiftwidth=2
        set expandtab
      '';
    };
  };
}

