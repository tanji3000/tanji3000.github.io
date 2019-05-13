---
layout: post
title:  sed 특정 라인의 문자열 치환
date:   2018-02-19 18:27:00
author: Tanji
Tags:   Shell, sed, 치환, 코딩
categories: Shell
---

shell script에서 sed는 정말 유용합니다. 그런데 매번 필요한데 기억이 안나는 용법에 대해서 간단하게 정리해봅니다.

sed를 이용해서 문자열 치환을 하고 싶을 때 아래와 같은 기본 용법을 사용하면 됩니다.

```
sed -i "s/atom/molecule/g" Filename
```

이렇게 하면 `atom`이 `molecule`로 치환이 됩니다.

그런데 가끔 특정 라인의 단어만 치환을 하고 싶을 때가 있지요. 이럴떄에는 맨앞에 줄번호만 기입해주면 됩니다.

```
sed -i "10s/atom/molecule/g" Filename
```
