{ pkgs ? import <nixpkgs> {} }:

with pkgs;
{
  this = callPackage ./default.nix { };
}
