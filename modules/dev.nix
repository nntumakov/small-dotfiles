{pkgs, ...}: {
  home.packages = with pkgs; [
    neovim

    pre-commit
  ];

  programs.git = {
    enable = true;
    lfs.enable = true;
    delta.enable = true;

    userName = "Tumakov Nikolay";
    userEmail = "tnn897014@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };

  programs.eza = {
    enable = true;
  };

  programs.zsh.shellAliases = {
    ls = "eza --icons -l";
    la = "eza --icons -la";
    lt = "eza --icons --tree";
  };

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };
}
