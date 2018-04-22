---
layout: post
title:  "Mac OS X 맥어드레스 변경하는 방법"
date:   2015-10-31
author: Tanji
Tags:   Mac, 맥 어드레스
categories: Mac
---

밖에서 작업할 때 맥 어드레스 변경이 필요할 때가 종종 있다. Termial 명령어를 이용하면 쉽게 맥의 맥 어드레스를 변경할 수 있다.

	$  sudo ifconfig en0 ether AA:AA:AA:BB:BB:11

en0 는 wifi에 해당되는 설정 이름이고 간혹 ethernet이 달린 (LAN 선 연결 가능한) 맥에는 en0이 ethnet이고 en1이 WIFI에 해당되는 경우가 있으니 `ifconfig` 명령어를 통해 확인하면 된다.

! 재부팅을 하면 맥 어드레스는 원래대로 돌아온다. Automator나 Shell을 이용하여 간단한 script를 만들면 쉽고 유용하게 사용할 수 있다.

**See also.**  
터미널 명령어를 이용해 WIFI 를 컨트롤 하는 방법

