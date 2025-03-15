{ config, pkgs, ... }:

{
  home.username = "worker";
  home.homeDirectory = "/home/worker";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  targets.genericLinux.enable = true;

  imports = [
    ./modules/dev.nix
    ./modules/utils.nix
    ./modules/fonts.nix

    ./gnome.nix

    ./zsh/default.nix
  ];
}
