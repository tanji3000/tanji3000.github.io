---
layout: post
title:  "[find] 여러 파일 이름을 한번에 검색하기"
date:   2018-01-19 18:31:00
author: Tanji
Tags:   Linux, Shell, Find, 리눅스, 파일검색, 여러 파일
categories: Shell
---

리눅스를 10년 넘게 사용하면서 파일 이름을 동시에 여러개 검색할 때 어떤 옵션이 필요한지 모르고 있었다. 다시 말해서 OR 조건을 주는 방법이다.

예를들어, WAVECAR, CHGCAR 파일을 모두 검색하려면, `-o` 옵션을 이용하면 된다.

```
find . -name "WAVECAR" -o -name "CHGCAR" -type f
```