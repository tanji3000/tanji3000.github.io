---
layout: post
title:  "[sed] 구분 기호로 분리하기"
date:   2018-01-14
author: Tanji
Tags:   Linux, Sed, delimiter
categories: Dummy
---

sed를 이용하다가 특정 column을 기준으로 정렬하는 방법은

`sed -k2`

이렇게 하면 기본적으로는 띄어쓰기나 탭으로 알아서 구분해주는데, 간혹 분리 기호를 지정해 주고 싶을때가 있다. 이럴때에는, `-t` 옵션을 주면 된다.

`sed -t'-' -n -k2`

