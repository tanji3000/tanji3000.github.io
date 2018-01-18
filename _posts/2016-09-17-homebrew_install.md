---
layout: post
title:  macOS Sierra - Homebrew 설치
date:   2016-09-17 04:57:23
---

1. 먼저 command line tool을 설치한다.

   ```sh
   $  xcode-select --install
   ```
<br>

2. 아래 내용을 터미널에 붙여 넣는다.

   ```sh
$  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```
<br>

3. 소프트웨어 설치로 정상적으로 동작 하는지 확인 해본다.

   ```sh
   $  brew install wget
   ```