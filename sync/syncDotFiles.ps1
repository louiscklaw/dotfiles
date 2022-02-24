
pushd $env:MY_WORKSPACE\dotfiles
  git add . 
  git commit -m"update windows dotfiles,"

  git fetch --all
  git pull

  start git push
popd
