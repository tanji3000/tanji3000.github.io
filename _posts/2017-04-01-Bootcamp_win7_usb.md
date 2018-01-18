---
layout: post
title:  구형 맥북에 부트캠프로 윈도우7 설치하기
date:   2017-04-01
Tags:   Bootcamp, usb, windows7, Mac, 맥, 부트캠프, 윈도우
---

G구형 맥북(MacBook Pro 13, Mid 2010)에 윈도우7 64bit를 설치하는데 4시간이 걸리는 바람에, 정리해본다.

설치하면서 겪었던 가장 큰 문제는 BootCamp 실행 후 초기 옵션에 ISO로부터 윈도우 설치 디스크를 만드는 옵션이 없었던 것이다.
(맥북, 정품 윈도우 ISO, USB 1개만 준비된 상황)

- 사실 이 구형 맥북에도 현재 가장 최신 OS인 MacOS Sierra (10.12.4)가 설치가 된다. 심지어 일반적인 인터넷 검색 및 간단한 문서 작업에는 전혀 문제가 없다. 신기했다.
- 처음에는 최신 OS에 있는 부트캠프가 구형 맥북에 윈도우 설치 지원을 안해주는 것 같아서, Yosemite로 OS를 변경해보았지만, 여전히 같은 증상을 보임.
- 인터넷 서핑 후 부트캠프 안에 있는 Info.plist 파일을 수정해 주어야 한다는 사실을 발견함.

해결방법은 다음 [사이트](https://forums.macrumors.com/threads/tutorial-how-to-enable-usb-install-on-mavericks-for-unsupported-bootcamps.1680652/)를 참고함

1. El Capitan (10.11) 부터 이후에 나온 OS에서는 루트리스 라는 보안 옵션을 끄고 진행해야 함. 끄는 방법은 [Macnews 블로그 포스팅](http://macnews.tistory.com/3408) 참고.
1. 터미널을 열고 아래의 경로 파일을 수정해줌. 필자는 vi editor로 편집함.
```
sudo vi /Applications/Utilities/Boot\ Camp\ Assistant.app/Contents/Info.plist
```
1. `응용프로그램` > `유틸리티` > `시스템정보` 앱을 실행하여 보이는 `모델 식별자`을 메모해두고
1. `<key>PreUSBBootSupportedModels</key>` 항목을 찾아서 `Pre` 글자를 제거 후 `<array>`와 `</array>` 사이 아래와 같이 한줄 추가
	```
	<string>MacBook7,1</string>
	```
1. `응용프로그램` > `유틸리티` > `시스템정보` 앱을 실행하여 보이는 `Boot ROM 버전을 메모해두고
1. `<key>DARequiredROMVersions</key>` 항목을 찾아서 `<array>`와 `</array>` 사이에 아래 한줄츨 추가
```
	<string>MBP71.0039.B0E</string>
	```

주의할 점은 이 때 적어주는 ROM Version은 `응용프로그램` > `유틸리티` > `시스템정보` 앱을 실행하여 보이는 `Boot ROM 버전`을 찾아서 적어주어야 한다.

이제 부트캠프를 실행해주면 USB 설치 디스크 생성 옵션이 보인다.

이상.
