{ stdenv, hugo, hugo-theme-anubis }:
stdenv.mkDerivation rec {
  src = ./.;
  nativeBuildInputs = [ hugo hugo-theme-anubis ];
  # avoid git submodules using flakes :-)
  patchPhase = ''
    mkdir -p themes/
    ln -s ${hugo-theme-anubis} themes/anubis
  '';
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
