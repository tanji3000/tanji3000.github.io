---
layout: post
title:  vim 명령어 history 동작 안될 때 해결법
date:   2018-02-19 19:14:00
author: Tanji
Tags:   vim, vi editor, history, 명령어
categories: Shell
---

vim가 실행중일 때 언제 어디서나 `:` (콜론) 키를 누르면 명령을 내릴 준비가 됩니다.

리눅스 shell과 거의 흡사하게 정말 유용한 명령어가 많은데요. 이러한 명령어 또한 리눅스 command line에서와 마찬가지로 키보드 방향키 위, 아래를 누르면 기존에 사용한 명령어 목록들이 나타나게 됩니다.

그런데 Mac에 설치된 vim에서는 history가 나타나지 않는 문제가 있어서 Google을 해보니 해결책을 쉽게 찾을 수 있었습니다.

1. 홈 디렉토리로 이동합니다. `cd ~`
1. `.viminfo` 파일의 권한을 살펴봅니다. `ls -l .viminfo`

   저는 root 권한으로 되어 있어서 history 기록이 안되고 있었네요.

1. 그럼 본인의 아이디로 파일 권한을 변경해 준다.

   `sudo chown YourUserId $HOME/.viminfo`

혹시 같은 증상이 있으신 분들은 참고 하시기를 바랄게요.
