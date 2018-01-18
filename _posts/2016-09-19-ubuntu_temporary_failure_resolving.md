---
layout: post
title:  Ubuntu - Temporary failure resolving … 에러 해결방법
date:   2016-09-19 05:57:23
---

Ubuntu에서 `apt-get`을 이용할 때 아래와 같이 Temporary failure resolving … 에러가 발생할 때가 있다. 이는 DNS 인식을 못 하는 문제로 임시로 사용 가능한 DNS server를 등록해주면 임시로 해결할 수 있다.

아래와 같이 Google의 DNS server를 임시로 등록해준다.

	$  echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null

그리고 나서 `sudo apt-get update` 을 수행해 본다.

만일 지속해서 에러가 발생한다면 *Google DNS Server (8.8.8.8)*을 영구적으로 등록해줘도 된다.

	$  echo "nameserver 8.8.8.8" | sudo tee /etc/resolvconf/resolv.conf.d/base > /dev/null

---- 

**참조**

- [Ubuntu Ask][1]

[1]:	http://askubuntu.com/questions/91543/apt-get-update-fails-to-fetch-files-temporary-failure-resolving-error