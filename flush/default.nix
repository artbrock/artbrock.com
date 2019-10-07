{ pkgs }:
let
 script = pkgs.writeShellScriptBin "art-flush" ''
rm -rf ./vendor
rm -f Gemfile.lock
rm -rf .jekyll-cache
rm -rf _site
rm ./.jekyll-metadata
'';
in
{
 buildInputs = [ script ];
}
