function echoPwd(){
  echo (Get-Location)
}

function dockerRun(){
  $curDir_temp = Get-Location
  echo $curDir_temp

  docker run -it `
    -v ${curDir_temp}:/app `
    -w /app `
    -v /var/run/docker.sock:/var/run/docker.sock `
    -p 3000-3099:3000 `
    -p 5555-5575:5555 `
    --user=1000 `
    --rm `
    $args
}

function dockerRunUbuntu1804 {dockerRun ubuntu:18.04 bash}
function dockerRunUbuntu {dockerRun ubuntu:latest bash}
function dockerRunFedora {dockerRun fedora:latest bash}
function dockerRunPython {dockerRun python:latest bash}

function dockerRunNode {dockerRun node:latest bash}
function dockerRunNode18 {dockerRun node:18-buster bash}
function dockerRunNode16 {dockerRun node:16-buster bash}
function dockerRunNode14 {dockerRun node:14-buster bash}
function dockerRunNode14 {dockerRun node:14-buster bash}

function dockerRunNest16 {dockerRun logickee/docker_nest16_tryout bash}
