{
  description = "dadada's homepage";

  inputs = {
    hugo-theme-anubis = {
      url = github:mitrichius/hugo-theme-anubis;
      flake = false;
    };
  };

  outputs = { self, hugo-theme-anubis, nixpkgs }: {
    packages.x86_64-linux.homePage = nixpkgs.legacyPackages.x86_64-linux.callPackage ./default.nix { inherit hugo-theme-anubis; };
  };
}
