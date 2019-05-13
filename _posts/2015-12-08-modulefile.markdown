---
layout: post
title:  "Modules 기능 사용시 modulefile 인식 가능한 PATH 등록하기"
date:   2015-12-08
author: Tanji
Tags: module, modulefile, path
categories: 리눅스_기술문서
---


Modules 구성하다가보니 modulefile을 인식 가능한 PATH가 아래의 경로로 고정되어 있다.

	~/Applications/Modules/3.2.10/modulefiles

세분화해서 분류하고자 할 때 아래 파일에 절대경로 위치를 한줄씩 적어주면 해당 경로에 있는 modulefile을 따로 분리해 주는 것이 가능하다
