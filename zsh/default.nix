{
  pkgs,
  lib,
  ...
}: {
  programs.bat.enable = true;

  programs.zsh = {
    enable = true;

    history = {
      size = 30000;
      save = 30000;
      extended = true;
    };

    dotDir = ".config/home-manager/zsh";

    autosuggestion.enable = true;
    enableCompletion = true;
    autocd = true;

    syntaxHighlighting.enable = true;

    shellAliases = {
      # ip = "ip --color=auto";

      # upd = "nh os switch";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "zsh-interactive-cd"
        "git-auto-fetch"
        "git"
      ];
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = lib.cleanSource ./p10k-config;
        file = "p10k.zsh";
      }
    ];
  };
}
