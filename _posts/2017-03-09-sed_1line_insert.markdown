---
layout: post
title:  sed 첫줄에 내용 추가
date:   2017-03-09
author: Tanji
Tags:   linux, sed
categories: Shell
---

shell script 할 때 종종 필요한 기능인데, 직관적으로 떠오르지 않아서 정리해 봅니다.

`ffdata`라는 파일명의 맨 첫줄에 한줄 내용을 추가하려면, 아래오 같이 입력해주면 된다. 추가한 내용을 파일에 바로 적용하고 싶으면 `-i` 옵션을 이용하면 된다. (`sed -i`)

```
$ sed "1i\HELLO" ffdata
```

