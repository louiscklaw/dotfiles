
pushd c:\Users\logic\dotfiles
  git add . 
  git commit -m"update windows dotfiles,"

  git fetch --all
  git pull

  start git push
popd
