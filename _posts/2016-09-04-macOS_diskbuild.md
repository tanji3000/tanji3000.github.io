---
layout: post
title:  macOS Sierra - USB 설치 디스크 만들기
date:   2016-09-04 00:57:23
---


macOS Sierra developer preview 1 버전이 개발자들에게 공개되었다. 여러 기능이 추가되었고, 여러 블로그를 보니 Keynote에서 공개되지 않는 여러 소소한 기능들이 추가된 것으로 보인다.

사실 Snow Leopard 이후로 OS X의 신뢰나 성능은 개선되어야 할 부분이 매우 눈에 띄게 많아졌다. 빠른 잠자기 및 깨어나기, 빠른 부팅속도는 Windows 컴퓨터들이 따라올 수 없는 영역이라고 믿어왔지만, 요즘의 OS X은 잠자기에서 깨어나면 뭔가 더뎌지는 것 같은 컴퓨터 속도, 동작하지 않는 와이파이 등 치명적인 버그들이 가득하다. 더 큰 문제는 여러 차례 업데이트 이후에도 해결하지 못한다는 것이다. 

이 때문에 새로운 macOS라는 이름을 달고 나오는 차세대 운영체제는 그리 반갑지는 않다. 그런데도 오늘 macOS를 설치하여 앞으로 어떤 개선이 이루어지는지 지켜볼 예정이다. OS X 라는 이름에서 macOS라는 새로운 이름을 달고 나오는 OS이니 만큼 기존의 버그투성이의 오명을 벗고 다시 한 번 세상에서 가장 뛰어난 OS라는 수식어가 붙기를 바란다.

**macOS 설치 디스크 만들기**

1. 필자는 현재 dmg 파일을 가지고 있다. dmg 파일을 실행하면 자동으로 마운트가 이루어 진다.
<br>

1. USB 디스크를 컴퓨터에 연결하고, (반드시) ***Untitled*** 라는 이름으로 포맷을 한다.
<br>

1. 터미널을 열고
<br>

1. 아래와 같이 명령어를 입력하면 macOS 설치 디스크가 완성이 된다. USB 메모리의 쓰기 속도 성능에 따라 수분에서 수십분이 소요될 수 있으니 참고하기 바란다.

   ```
   $ sudo /Applications/Install\ macOS\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/Untitled --applicationpath /Applications/Install\ macOS\ Sierra.app --nointeraction
   ```

