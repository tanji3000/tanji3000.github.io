---
layout: post
title:  MacOS에 터미널 환경 구축하기
date:   2016-08-31 22:56:23
---

Mac의 큰 장점은 리눅스와 같이 GUI 환경 뒤에 강력한 Terminal 환경이 있다는 것입니다.

터미널 사용시 편리한 소프트웨어 리스트 입니다.


1. [iTerm2][1] : 최고의 Terminal App

1. [XQuartz][2] : Windows 에서는 따라올 수 없는 x-forwarding 성능

1. [Xcode][3] : 개발자에게 꼭 필요한.. 기본적인 리눅스 Command 명령어 제공 (아래 4번 방법으로 설치)

1. Xcode Command line tools :

    ```
    $  xcode-select --install
    ```
    
1. [Homebrew][4] : Mac을 위한 패키지 관리자

   - 유용한 필수 페키지

[1]:	http://iterm2.com/
[2]:	http://xquartz.macosforge.org/landing/
[3]:	https://itunes.apple.com/kr/app/xcode/id497799835?mt=12
[4]:	http://brew.sh/index_ko.html