function echoPwd() {
  echo (Get-Location)
}

function dockerRun() {
  $curDir_temp = Get-Location
  echo $curDir_temp

  $var1 = ipconfig | findstr IPv4 | findstr 192
  $HOST_ADDRESS = $var1.Split(" ")[16]

  echo $HOST_ADDRESS

  docker run -it `
    -v ${curDir_temp}:/app `
    -w /app `
    --env HOST_ADDRESS=$HOST_ADDRESS `
    -v /var/run/docker.sock:/var/run/docker.sock `
    -p 5555-5575:5555 `
    --rm `
    $args
}

function dockerRunUbuntu1804 { dockerRun ubuntu:18.04 bash }
function dockerRunUbuntu { dockerRun ubuntu:latest bash }
function dockerRunFedora { dockerRun fedora:latest bash }
function dockerRunPython { dockerRun python:latest bash }

function dockerRunNode { dockerRun node:latest bash }
function dockerRunNode20 { dockerRun node:20-bullseye bash }
function dockerRunNode18 { dockerRun node:18-bullseye bash }
function dockerRunNode16 { dockerRun node:16-bullseye bash }
function dockerRunNode14 { dockerRun node:14-bullseye bash }

function dockerRunNest16 { dockerRun logickee/docker_nest16_tryout bash }