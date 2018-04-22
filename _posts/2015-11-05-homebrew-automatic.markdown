---
layout: post
title:  "homebrew 설치부터 cask로 기본 프로그램 자동설치 script"
date:   2015-11-05 20:33:00
author: Tanji
Tags:   Linux, Vim, xclip, copy, 복사
categories: Mac
---

xcode + xcode command line tool 설치된 상태에서 Homebrew를 자동으로 설치하고 cask를 이용하여 필요한 소프트웨어들을 자동으로 설치해 주는 terminal script를 공유합니다.  
<br><br>
설치 소프트에어 목록은 아래와 같습니다.  
<br>
xquartz 'wget' 'coreutils' 'watch' 'gnuplot --with-x11' 'homebrew/x11/xclip' 'vim' 'homebrew/dupes/rsync' 'lynx' java istat-menus appcleaner keepingyouawake python alfred bittorrent-sync transmission coconutbattery 1password google-chrome hazel thunderbird teamviewer



~~~shell
#!/bin/bash

echo "
---------------------------
Homebrew installation:
---------------------------
"

echo -n "Do you want to install the Homebrew on this Mac? (yes / no) > "
read hb1
  if [ "$hb1" == "yes" ];then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  elif [ "$hb1" == "no" ];then
    echo "Skipping the install of Homebrew on thie Mac."

  fi



echo "
---------------------------
Homebrew cask installation:
---------------------------
"
brew install caskroom/cask/brew-cask


echo "
---------------------------
XQuartz
---------------------------
"
brew cask install xquartz



echo "
---------------
Basic Packages:
---------------
"

    for i in 'wget' 'coreutils' 'watch' 'gnuplot --with-x11' 'homebrew/x11/xclip' 'vim' 'homebrew/dupes/rsync' 'lynx'  
do

    brew install $i

done



echo "
------------------
Cask installation:
------------------
"

	for cask in java istat-menus appcleaner keepingyouawake python alfred bittorrent-sync transmission coconutbattery 1password google-chrome hazel thunderbird teamviewer
	do

    brew cask install $cask
    
    done

~~~


