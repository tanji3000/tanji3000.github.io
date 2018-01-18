---
layout: post
title:  "cmake 설치하기"
date:   2015-10-21
tag: Linux, cmake
---


openbabel 설치를 하려고 하는데 cmake가 없다.

1. [cmake 다운로드](https://cmake.org/download/)
<br><Br>
1. 압축을 풀고

	tar xvfz cmake-3.3.2.tar.gz


1. 아래 순서대로 설치 진행


        cd cmake-3.3.2
        ./bootstrap
        gmake
        make DESTDIR=/home/john
        install
