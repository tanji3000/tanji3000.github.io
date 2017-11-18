---
layout: post
title:  Ubuntu - Locale 변경 방법
date:   2016-09-10 20:56:23
---

1. 일단 `locale` 명령어로 현재 locale을 확인한다.

> 여러 줄이 나오고, 첫줄에 아래와 같이 한글로 되어 있다.
> 
> LANG=ko_KR.utf-8

2. vi editor 와 같은 편집기로 `vi /etc/default/locale` 파일을 연다.
3. 기존 내용을 삭제하고 `LANG=en_US.UTF-8` 을 추가해 주고 저장 (`:x`)하고 빠져나온다.
4. 로그아웃 (`logout`) 하고 재접속하면 locale 이 변경된다.
