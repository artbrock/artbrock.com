{ pkgs }:
let

  name = "nix-deploy";

  path = "_site";
  upstream = "origin";
  deploy = "deploy";
  from-branch = "master";
  to-branch = "master";

  # https://stackoverflow.com/questions/36782467/set-subdirectory-as-website-root-on-github-pages#36782614
  # https://clontz.org/blog/2014/05/08/git-subtree-push-for-deployment/
  # https://stackoverflow.com/questions/33172857/how-do-i-force-a-subtree-push-to-overwrite-remote-changes
  script = pkgs.writeShellScriptBin name
  ''
set -euo pipefail
if [[ -n $(git status --porcelain) ]]
 then echo "Repo is dirty! Commit changes before attempting to push to github pages." && exit 1
 else
   echo "Building jekyll docs"
   nix-build

   if [[ $(git status --porcelain) ]]
    then
     echo "Pushing to github pages"
     git add . && git commit -am'jekyll build docs [skip ci]'
     # git push ${upstream} ${from-branch}
     git push ${deploy} `git subtree split --prefix ${path} ${from-branch} --message 'github pages push [skip ci]'`:${to-branch} --force
    else
     echo 'failed git status check'
   fi
fi
  '';
in
{
 buildInputs = [ script ];
}
