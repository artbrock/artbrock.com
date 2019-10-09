let
 pkgs = import ./nix/pkgs;

 deploy = pkgs.callPackage ./nix/deploy { pkgs = pkgs; };
 flush = pkgs.callPackage ./nix/flush { pkgs = pkgs; };
 serve = pkgs.callPackage ./nix/serve { pkgs = pkgs; };

 dev-shell = (pkgs.callPackage ./nix/shell {
  deploy = deploy;
  pkgs = pkgs;
  flush = flush;
  serve = serve;
 });
in
{

 pkgs = pkgs;

 dev-shell = pkgs.stdenv.mkDerivation (removeAttrs dev-shell [ "override" "overrideDerivation" ]);

}
