{
 build,
 deploy,
 pkgs,
 flush,
 serve
}:
{
 name = "dev-shell";

 # keep all the gems installed local to the repo
 shellHook = ''
export BUNDLE_PATH=`pwd`/vendor
export BUNDLE_HOME=$BUNDLE_PATH
export GEM_PATH=$BUNDLE_PATH
export GEM_HOME=$BUNDLE_HOME
 '';

 buildInputs = [
  pkgs.jekyll
  pkgs.bundler
  pkgs.ruby
 ]
 ++ build.buildInputs
 ++ deploy.buildInputs
 ++ flush.buildInputs
 ++ serve.buildInputs
 ;
}
