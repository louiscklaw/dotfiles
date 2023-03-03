# function gitPushNewBranch { git push --set-upstream origin test/louislabs-traefik-check }
$cmdOutput = git branch | findstr /c:"*"
$CharArray = $cmdOutput.Split(" ")
echo $CharArray[1]