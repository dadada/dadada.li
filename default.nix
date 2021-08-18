{ stdenv, hugo }:
stdenv.mkDerivation rec {
  src = ./.;
  nativeBuildInputs = [ hugo ];
  buildPhase = ''
    hugo
  '';
  installPhase = ''
    mkdir -p $out
    cp -r public/* $out
  '';
  name = "dadada.li";
  version = "0.2";
}
