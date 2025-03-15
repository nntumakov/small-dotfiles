{ pkgs, ... }:
{
  home.packages = with pkgs; [
    flatpak
    bottom
    djvu2pdf
    fzf
    gdu
    jellyfin-ffmpeg
    lazygit
    neovim
    pre-commit
    ripgrep
    tmux
  ];
}
