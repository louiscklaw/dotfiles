
pushd $env:WORKSPACE_DIR\dotfiles
git add . 
git commit -m"update windows dotfiles,"

git fetch --all
git pull
git push
popd
