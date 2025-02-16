{
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    rustc
    cargo

    clang
    cmake
    llvmPackages_19.clang-tools

    texliveFull
    typst

    tex-fmt
    nixfmt-rfc-style

    nodejs_23
  ];
}
