---
layout: post
title:  "[shell script] 파일 확장자 없애기"
date:   2015-10-29
Tags:   Mac, 맥 어드레스

---

Shell script 만들 때 가끔 확장자를 없애야 될 때가 있는데 그동안 sed를 이용했었는데 basename 을 이용하면 편하다. 

	$  ls -1 filename.txt |sed s/.txt//g

basename 이용한 방법

	$  basename filename.txt .txt

