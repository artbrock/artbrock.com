{ pkgs }:
let
 script = pkgs.writeShellScriptBin "nix-build" ''
bundle install && \
bundle exec jekyll build \
 --config _config.yml \
 --trace
'';
in
{
 buildInputs = [ script ];
}
