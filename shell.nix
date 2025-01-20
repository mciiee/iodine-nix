{ pkgs ? import <nixpkgs> {} }:
let preferredCompiler = if builtins.getEnv "CC" == "gcc" then pkgs.gcc else pkgs.clang; in
pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
      # clang
      preferredCompiler

      pkg-config
      gnumake

      zlib

      check
  ];

}
