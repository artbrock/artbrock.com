{ pkgs }:
let
 script = pkgs.writeShellScriptBin "art-watch" ''
bundle install && bundle exec jekyll build --watch --incremental
'';
in
{
 buildInputs = [ script ];
}
