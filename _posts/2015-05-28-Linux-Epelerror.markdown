---
layout: post
title:  "Linux에 Octave 설치"
date:   2015-05-28 20:56:23
author: Tanji
Tags:   Octave, epel, repolist
categories: 리눅스_기술문서
---


요즘은 무료 코드들을 긁어다 사용합니다. 처음에 손이 많이 가긴 하지만 리눅스 환경에서 몇줄의 코딩만으로 반복적인 일들을 손쉽게 할 수 있는 큰 장점이 있죠. 오늘은 Octave를 설치하려고 했습니다. 여러 라이브러리 문제로 소스코드로 컴파일하는 것은 실패. 찾아보니, EPEL에서 Octave Package를 제공해 준다고 써있네요. 설치 방법을 정리해 보았습니다.

1. 먼저 아래와 같이 epel rpm package를 설치해 주고..

   ```
   $  wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    $  rpm -Uvh epel-release-6-8.noarch.rpm
   ```


1. repolist update를 해줍니다.

   ```
   $  yum repolist
   ```


그런데 아래와 같은 오류가 발생한다.

> Error : Cannot retrieve metalink for repositroy: epel. Please verify its path and try again.
 
 
이제 `/etc/yum.repos.d/epel.repo` 파일을 열어서 아래와 같이 baseurl은 주석해제 mirrorlist는 주석처리를 해준다.

그리고나서 다시 `yum repolist`를 실행해주면 repolist가 업데이트 되고 Octave 설치가 가능해진다.

```
[epel]
name=Extra Packages for Enterprise Linux 6 -$basearch
baseurl=http://download.fedoraproject.org/pub/epel/6/$basearch
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch
failovermethod=priority
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
```
