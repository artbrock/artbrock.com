{ pkgs }:
let
 script = pkgs.writeShellScriptBin "art-serve" ''
bundle install && \
bundle exec jekyll serve \
 --incremental \
 --livereload \
 --watch \
 --config _config.yml,_config_dev.yml \
 --trace
'';
in
{
 buildInputs = [ script ];
}
