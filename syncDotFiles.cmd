
pushd c:\Users\logic\_workspace\dotfiles
  git add . 
  git commit -m"update windows dotfiles,"

  git fetch --all
  git pull

  start git push
popd
