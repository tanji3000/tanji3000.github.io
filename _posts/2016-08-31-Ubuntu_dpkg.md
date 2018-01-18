---
layout: post
title:  "Ubuntu - apt-get 사용시 dpkg 오류 해결방법"
date:   2016-08-31 00:57:23
---


우분투에서 apt-get 이용시 아래와 같은 dpkg lock 오류가 발생할 때가 있다.

> E: Could not get lock /var/lib/dpkg/lock - open (11 Resource temporarily unavailable)
<br>
> E: Unable to lock the administration directory (/var/lib/dpkg/) is another process using it?  

이 때 Lock 파일을 삭제해 주면 해결할 수 있다.

	$  sudo rm /var/lib/apt/lists/lock

그래도 여전히 문제가 발생하면 cache directory에 있는 파일도 삭제하면 해결이 된다.

	$  sudo rm /var/cache/apt/archives/lock
	
