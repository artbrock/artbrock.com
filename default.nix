let
 pkgs = import ./nixpkgs;

 build = pkgs.callPackage ./build { pkgs = pkgs; };
 flush = pkgs.callPackage ./flush { pkgs = pkgs; };
 serve = pkgs.callPackage ./serve { pkgs = pkgs; };

 dev-shell = (pkgs.callPackage ./nix-shell {
  pkgs = pkgs;
  build = build;
  flush = flush;
  serve = serve;
 });
in
{

 pkgs = pkgs;

 dev-shell = pkgs.stdenv.mkDerivation (removeAttrs dev-shell [ "override" "overrideDerivation" ]);

}
