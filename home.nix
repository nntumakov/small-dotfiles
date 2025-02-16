{ config, pkgs, ... }:

{
  home.username = "worker";
  home.homeDirectory = "/home/worker";
  home.stateVersion = "24.11";

  home.file = { };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;

  targets.genericLinux.enable = true;

  imports = [
    ./modules/dev.nix
    ./modules/code.nix
    ./modules/utils.nix
    ./modules/programs.nix
    ./zsh/default.nix
  ];
}
