---
layout: post
title:  Ubuntu - predefs.h 파일 못찾을 때
date:   2016-09-07 23:57:23
---

ubuntu에 wulffman 설치시 아래와 같이 헤더 파일을 못찾는 경우가 있다. Ubuntu를 기본 서버 버전으로 설치하는 바람에 대부분의 패키지는 설치가 안된 것 같다.

> ‘make: \*\*\* No rule to make target '/usr/include/bits/predefs.h', needed by 'wulffman.o'.  Stop.

`gcc-multilib`를 설치하면 해결된다.

```
$ sudo apt-get install gcc-multilib
```

그런데 해당 header 파일은 ubuntu 12 이후 버전에서는 이름이 변경된 것으로 보인다…

