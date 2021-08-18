{ pkgs ? import <nixpkgs> {} }:

with pkgs;
{
  this = callPackage ./nix { };
}
