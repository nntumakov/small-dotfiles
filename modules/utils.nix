{pkgs, ...}: {
  home.packages = with pkgs; [
    jellyfin-ffmpeg
    djvu2pdf
    tmux
    neovim
    ripgrep
    lazygit
    gdu
    bottom
  ];
}