remote_get_url=$(git remote get-url origin 2>&1)
if [[ $remote_get_url =~ .*fatal.* ]]; then
  echo "cannot find remote origin"
else
  echo "remote origin " $remote_get_url
  http_link=${remote_get_url/git@/https://}
  http_link=${http_link/.com:/.com/}
  http_link=${http_link/.git//}
  $DEFAULT_BROWSER  $http_link &
fi