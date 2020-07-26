with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "dadada.li";
  builtInputs = [ pkgs.hugo ];
  src = ./.;
  buildPhase = "${pkgs.hugo}/bin/hugo";
  installPhase = ''
    mkdir -p $out
    cp -r public/* $out
  '';
  dontFixup = true;
  dontStrip = true;

  meta = with lib; {
    description = "dadada.li web-site";
    license = licenses.cc-by-sa-40;
  };
}

