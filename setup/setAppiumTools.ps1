Set-ExecutionPolicy Unrestricted
choco feature enable -n allowGlobalConfirmation

choco install jdk8 -y

choco install ffmpeg -y

choco install OpenCV -y
npm install -g opencv4nodejs
