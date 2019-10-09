{ pkgs }:
let

  name = "nix-deploy";

  path = " _site";
  upstream = "origin";
  from-branch = "master";
  to-branch = "gh-pages";

  # https://stackoverflow.com/questions/36782467/set-subdirectory-as-website-root-on-github-pages#36782614
  # https://clontz.org/blog/2014/05/08/git-subtree-push-for-deployment/
  # https://stackoverflow.com/questions/33172857/how-do-i-force-a-subtree-push-to-overwrite-remote-changes
  script = pkgs.writeShellScriptBin name
  ''
set -euo pipefail
rm -rf ./_site
if [[ -n $(git status --porcelain) ]]
 then echo "Repo is dirty! Commit changes before attempting to push to github pages." && exit 1
 else
   echo "Building jekyll docs"
   bundle install && bundle exec jekyll build --config _config.yml

   if [[ $(git status --porcelain) -eq 0 ]]
    then
     echo "Pushing to github pages"
     git add . && git commit -am'jekyll build docs [skip ci]'
     git push ${upstream} ${from-branch}
     git push ${upstream} `git subtree split --prefix ${path} ${from-branch} --message 'github pages push [skip ci]'`:${to-branch} --force
    else
     echo 'failed git status check'
   fi
fi
  '';
in
{
 buildInputs = [ script ];
}
