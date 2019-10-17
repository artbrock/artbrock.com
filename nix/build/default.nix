{ pkgs }:
let
 script = pkgs.writeShellScriptBin "nix-build" ''
rm -rf ./_site
bundle install && \
bundle exec jekyll build \
 --config _config.yml \
 --trace
'';
in
{
 buildInputs = [ script ];
}
