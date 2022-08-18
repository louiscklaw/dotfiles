$env:WORKSPACE_DIR="D:\_workspace"

$env:CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"

function gitPushNewBranch { 
  $cmdOutput = git branch | findstr /c:"*"
  $CharArray =$cmdOutput.Split(" ")
  # echo $CharArray[1]
  git push --set-upstream origin $CharArray[1]
}

function dockerClearAll {
  docker kill $(docker ps -q -a)
  docker rm $(docker ps -q -a)

  docker system prune -f
  docker volume prune -f
  docker image prune -f

  docker image rm $(docker image ls -q -a)
}

function gitCloneShallow {git clone --depth=1 $args}

function codeCarousellPlaylist {code $env:WORKSPACE_DIR\carousell-playlist}

function codeJobQueuePlaylist {code $env:WORKSPACE_DIR\job-queue-playlist}
function codeGulpPlaylist {code $env:WORKSPACE_DIR\gulp-playlist}
function codeRoutineCheck {code $env:WORKSPACE_DIR\routine_check}
function codeWeeklyReport {code $env:WORKSPACE_DIR\louislabs_weekly_report}
function codeNestjsPlaylist {code $env:WORKSPACE_DIR\nestjs-playlist}
function codeGithubPlaylist {code $env:WORKSPACE_DIR\github-playlist}

function code_appium_playlist {code $env:WORKSPACE_DIR\appium-playlist}
Set-Alias -Name codeappiumPlaylist -Value code_appium_playlist

function code_firebase_playlist {code $env:WORKSPACE_DIR\firebase-playlist}
Set-Alias -Name codeFirebasePlaylist -Value code_firebase_playlist

function code_dashboard_tryout {code $env:WORKSPACE_DIR\dashboard-tryout}
Set-Alias -Name codeDashboardTryout -Value code_dashboard_tryout

function code_altium_designer {code $env:WORKSPACE_DIR\altium-designer-playlist}
Set-Alias -Name codeAltiumDesigner -Value code_altium_designer

function code_arduino_playlist {code $env:WORKSPACE_DIR\arduino-playlist}
Set-Alias -Name codeArduinoPlaylist -Value code_arduino_playlist

function code_esp32_playlist {code $env:WORKSPACE_DIR\esp32-playlist}
Set-Alias -Name codeEsp32Playlist -Value code_esp32_playlist

function code_esp8266_playlist {code $env:WORKSPACE_DIR\esp8266-tryout}
Set-Alias -Name codeEsp8266Playlist -Value code_esp8266_playlist

function code_python_playlist {code $env:WORKSPACE_DIR\codePythonPlaylist}
Set-Alias -Name codePythonPlaylist -Value code_python_playlist

function code_react_playlist {code $env:WORKSPACE_DIR\react-playlist}
Set-Alias -Name codeReactPlaylist -Value code_react_playlist

function code_stm32_tryout {code $env:WORKSPACE_DIR\stm32_tryout}
Set-Alias -Name codeStm32Tryout -Value code_stm32_tryout

function code_portfolio {code $env:WORKSPACE_DIR\nextjs-playlist\nextjs-portfolio-tryout}
Set-Alias -Name codePortfolio -Value code_portfolio

function code_strapi_playlist {code $env:WORKSPACE_DIR\strapi-playlist}
Set-Alias -Name codeStrapiPlaylist -Value code_strapi_playlist

function code_refine_playlist {code $env:WORKSPACE_DIR\refine-playlist}
Set-Alias -Name codeRefinePlaylist -Value code_refine_playlist

function code_nodejs_playlist {code $env:WORKSPACE_DIR\nodejs-playlist}
Set-Alias -Name codeNodejsPlaylist -Value code_nodejs_playlist

function code_nextjs_playlist {code $env:WORKSPACE_DIR\nextjs-playlist}
Set-Alias -Name codeNextJsPlaylist -Value code_nextjs_playlist

function code_gatsbyjs_playlist {code $env:WORKSPACE_DIR\gatsbyjs-playlist}
Set-Alias -Name codeGatsbyJsPlaylist -Value code_gatsbyjs_playlist

function code_paid_theme_playlist {code $env:WORKSPACE_DIR\paid_theme_playlist}
Set-Alias -Name codePaidThemePlaylist -Value code_paid_theme_playlist

function code_js_playlist {code $env:WORKSPACE_DIR\js-playlist}
Set-Alias -Name codeJsPlaylist -Value code_js_playlist

function code_docker_playlist {code $env:WORKSPACE_DIR\docker-playlist}
Set-Alias -Name codeDockerPlaylist -Value code_docker_playlist

function code_tmp_del {code $env:WORKSPACE_DIR\temp\_del}
Set-Alias -Name codeTmpDel -Value code_tmp_del

function code_todo {code D:\_todo}
Set-Alias -Name codeTodo -Value code_todo

function code_platform_io {code $env:WORKSPACE_DIR\platformio-playlist}
Set-Alias -Name codePlatformIo -Value code_platform_io

function code-expo-playlist { code $env:WORKSPACE_DIR\expo-playlist }
Set-Alias -Name codeExpoPlaylist -Value code-expo-playlist

function code-inventor { code $env:WORKSPACE_DIR\inventor-tryout }
Set-Alias -Name codeInventor -Value code-inventor

function code_kicad_library { code $env:WORKSPACE_DIR\kicad_library }
Set-Alias -Name codeKicadLibrary -Value code_kicad_library

function code_kicad_playlist { code $env:WORKSPACE_DIR\kicad-playlist }
Set-Alias -Name codeKicadPlaylist -Value code_kicad_playlist

function code_dot_files {code $env:WORKSPACE_DIR\dotfiles}
Set-Alias -Name codeDotFiles -Value code_dot_files

function code_inventor {code $env:WORKSPACE_DIR\inventor-tryout}
Set-Alias -Name codeInventor -Value code_inventor

function code_restaurant_cms {code $env:WORKSPACE_DIR\restaurant_cms_tryout}
Set-Alias -Name codeRestaurantCMS -Value code_restaurant_cms

# Git
function git-status { git status }
Set-Alias -Name gst -Value git-status

function git-addall { git add -A }
Set-Alias -Name gaa -Value git-addall

function git-branch { git branch $args }
Set-Alias -Name gb -Value git-branch

function git-diff { git diff $args }
Set-Alias -Name gd -Value git-diff

function git-diff-cached { git diff --cached }
Set-Alias -Name gdc -Value git-diff-cached

function git-diff-master { git diff master }
Set-Alias -Name gdm -Value git-diff-master

function git-diff-dev { git diff dev }
Set-Alias -Name gdd -Value git-diff-dev

function git-commit-all { git commit -a }
Set-Alias -Name gca -Value git-commit-all

function git-push { git push }
Set-Alias -Name gitPush -Value git-push

function git-checkout { git checkout $args }
Set-Alias -Name gco -Value git-checkout

function git-push { git push $args }
Set-Alias -Name gitPush -Value git-push

function git-commit-m { git commit -m $args }
Set-Alias -Name gcmm -Value git-commit-m

function develop_hw { echo "Developing HW" }
Set-Alias -Name developHW -Value develop_

function git_add {git add $args}
Set-Alias -Name ga -Value git_add

function git_clone_shallow {git clone --depth=3 $args}
Set-Alias -Name gitCloneShallow -Value git_clone_shallow
