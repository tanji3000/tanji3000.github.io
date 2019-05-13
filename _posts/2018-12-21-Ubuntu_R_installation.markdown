---
layout: post
title:  "Ubuntu에서 RStudio Server 설치하기"
date: 2018-12-02 21:36:13
author: Tanji
Tags: R, 설치, aws, ec2, cloud
categories: R
---

전체적인 설치 과정은 아래 사이트를 참고하면 됩니다.

[digitalocean.com 의 Tutorial Community 중...](https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-18-04)

설치 전에 R에서 사용하는 주요 패키지 들에서 필요한 library들을 미리 설치해두는 것을 추천합니다.

1. 필수 라이브러리 설치

```{bash}
sudo apt install libssl-dev
sudo apt install libxml2-dev
sudo apt install libcurl4-openssl-dev
```

1. JAVA 설치
```
sudo apt install openjdk-11-jdk
sudo R CMD javareconf
```

1. R 패키지 설치

```
sudo apt-get install gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.1.463-amd64.deb
sudo gdebi rstudio-server-1.1.463-amd64.deb
```

1. 패스워드 설정

```
Sudo passed ubuntu
```




### 참고
