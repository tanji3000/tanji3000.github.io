---
layout: post
title:  "[vi] 텍스트 치환 방법"
date:   2016-09-04
author: Tanji
Tags:  Vim, vi editor, 치환, sed
categories: Shell
---

vi editor에서 input 파일 만들 때 파일명 수정 시 주로 활용할 수 있는 텍스트 치환 방법 입니다.

`:` 명령어 입력 모드에서

	%s/filename1/filename2/g

전체 파일 내용(`%`)중 `filename1`을 `filename2`로 치환하라는 의미