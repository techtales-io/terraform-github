let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.direnv
      pkgs.pre-commit
      pkgs.terraform
      pkgs.terraform-docs
      pkgs.tflint
      pkgs.tfsec
    ];
  }
