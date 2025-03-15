{ pkgs, ... }:
{
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

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };

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
}
