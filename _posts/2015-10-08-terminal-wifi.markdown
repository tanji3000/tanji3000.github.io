---
layout: post
title:  "터미널 명령어를 이용해 WIFI 를 컨트롤 하는 방법"
date:   2015-10-08
author: Tanji
tag: Mac, Terminal, Command line, wifi
categories: Mac
---

오늘은 터미널 명령어로 WIFI 접속하는 방법을 알아보려고 합니다. 그리고 자동으로 스타벅스 와이파이 설정하는 방법까지 응용하는 방법도 안내해 드리려고 합니다. 

1. 아래와 같이 WIFI를 끄고 켤 수 있습니다. 첫 명령어 실행때에는 계정 암호를 입력해야 합니다.

   ```
   $  sudo ifconfig en0 down
   ```


1. airtport 명령어를 이용하여 주변의 와이파이를 검색해 보겠습니다. System 디렉터리 아래 깊숙한 곳에 숨겨져 있습니다. `-s` 옵션이 바로 와이파이를 검색하라는 명령어 입니다.

   ```
   $  /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -s
   ```



1. *olleh_starbucks* 와이파이가 보이네요. *olleh_starbucks*에 접속해 보겠습니다.

   ```
   $  networksetup -setairportnetwork en0 olleh_starbucks
   ```



