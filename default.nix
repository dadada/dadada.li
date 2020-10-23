{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation rec {
  src = ./src;
  nativeBuildInputs = [ pkgs.pandoc ];
  buildPhase = ''
    find . -iname "*.md" -type f -exec sh -c 'pandoc -s -f commonmark -t html --template template.html -o "''${0%.md}.html" "''${0}"' {} \;
  '';
  installPhase = ''
    mkdir -p $out
    cp -r . $out/
  '';
  name = "dadada.li";
  version = "0.1";
}
