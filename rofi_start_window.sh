#!/usr/bin/env bash

options="google chrome browser
chromium browser
datagrip database client
leanote notebook
pycharm development env
shadowsocks ss
vmware workstation
terminal
xfce terminal
intellij idea java
clion c language
pcmanfm file manager
electronic wechat client
qq tim
netease cloud music
remmina remote control
deepin terminal
shotcut
atom text editor
postman
"

theme=${1:-$i3config/rofi_Monokai.rasi}
selection=$(echo -e "${options}" |  rofi -show window -dmenu \
    -config $theme \
    -fullscreen \
    -modi "window,run,ssh")

case "${selection}" in
  "google chrome browser")
    google-chrome-stable;;
  "chromium browser")
    chromium;;
  "terminal")
    terminal;;
  "xfce terminal")
    xfce4-terminal;;
  "shadowsocks ss")
    ss-qt5;;
  "pcmanfm file manager")
    pcmanfm;;
  "electronic wechat client")
    electronic-wechat;;
  "netease cloud music")
    netease-cloud-music;;
  "remmina remote control")
    remmina;;
  "deepin terminal")
    deepin-terminal;;
  "atom text editor")
    atom;;
  "vmware workstation")
    vmware;;




  "datagrip database client")
    bash /opt/pro/datagrip/start.sh;;
  "leanote notebook")
    bash /opt/pro/leanote/start.sh;;
  "pycharm development env")
    bash /opt/pro/pycharm/start.sh;;
  "intellij idea java")
    /opt/pro/idea-iu/start.sh;;
  "clion c language")
   /opt/pro/clion/start.sh;;
  "qq tim")
    cd /opt/deepinwine/apps/Deepin-TIM; bash run.sh;;
  "shotcut")
   /opt/pro/shotcut/start.sh;;
  "postman")
   /opt/pro/postman/start.sh;;


esac

