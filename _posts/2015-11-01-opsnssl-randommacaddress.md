---
layout: post
title:  "Random하게 맥 어드레스 생성하기"
date:   2015-11-01
Tags:   openssl, random, mac address, mac

---

openssl을 이용하여 random하게 맥 어드레스 생성하는 것이 가능합니다. rand 하게 hex code를 만들고 sed 명령어를 이용하여 자동으로 두 글자마다 : (콜론)으로 분리해 줍니다.

    $  openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'

