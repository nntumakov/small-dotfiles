{ pkgs, lib, ... }:
{
  home.packages = with pkgs.gnomeExtensions; [
    forge
    astra-monitor
  ];

  dconf = {
    settings = {
      "org/gnome/shell" = {
        enabled-extensions = [
          "monitor@astraext.github.io"
          "forge@jmmaranan.com"
        ];
      };
    };
  };
}
