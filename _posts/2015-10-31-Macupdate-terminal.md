---
layout: post
title:  "Terminal로 맥 소프트웨어 업데이트 하는 방법"
date:   2015-10-31
Tags:   Mac, 맥 어드레스

---

Terminal 명령어로 아래와 같이 입력하면 소프트웨어 업데이트를 진행할 수 있다.

	$  sudo softwareupdate -l

그럼 아래와 같이 해당 항목이 보일 것이고 -d 옵션을 주면 다운로드만 진행할 것이고 (* 부분의 이름을 큰 따옴표(" ") 로 묶으면 된다)

    $  sudo software update -d "OS X El Capitan Update Public Beta-10.11.2"

-i 옵션을 주면 설치를 곧바로 진행할 것이다.

    $  sudo software update -i "OS X El Capitan Update Public Beta-10.11.2"

다 필요 없고 모든 업데이트를 자동으로 설치하고 싶으면 -i 옵션에 all 을 붙여주면 된다.

    $  sudo software update -i all
