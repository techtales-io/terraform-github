let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      # base packages
      pkgs.pre-commit
      pkgs.tig
      # for install
      pkgs.direnv
      pkgs.terraform
      pkgs.terraform-docs
      pkgs.tflint
    ];
  }
