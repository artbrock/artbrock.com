{ pkgs }:
let
 # flush everything that can be rebuilt locally
 nix-soft-flush = pkgs.writeShellScriptBin "nix-soft-flush" ''
rm -f Gemfile.lock
rm -rf .jekyll-cache
rm -rf _site
rm -f .jekyll-metadata
'';

 # soft flush && refetch all deps
 nix-flush = pkgs.writeShellScriptBin "nix-flush" ''
nix-soft-flush
rm -rf ./vendor
'';
in
{
 buildInputs = [ nix-soft-flush nix-flush ];
}
