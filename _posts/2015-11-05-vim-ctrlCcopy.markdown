---
layout: post
title:  "xclip으로 vi editor 안에서 ctrl+C로 복사하기"
date:   2015-11-05 11:33:00
author: Tanji
Tags:   Linux, Vim, xclip, copy, 복사
categories: Mac
---


vi editor 내에서 많은 라인을 한번에 클립보드로 복사해야 될 일이 많이 있습니다. 그런데 기본적으로 방향키 스크롤은 vi editor 내에서 동작하지 않죠. 그래서 xclip을 이용하여 가능합니다. 단, xclip, xquartz가 사전에 설정되어 있어야 합니다.

1. xclip 설치하기     

   ```
   $  brew install xclip
   ```
<br>

2. ~/.vimrc 에 아래 내용 넣어주기  

	```
	"Clipboard
	set clipboard=unnamedplus
	vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
	```
<br>

3. Xquartz 환경설정 '붙이기 보드' 탭에서 맨 아래에 '새로운 텍스트가 선택되면 바로 붙이기 보드 업데이트' 체크박스 선택
<br><br>


4. 그 이후에 vi editor에서 `shift + V` 키로 블럭을 설정한 이후에 `ctrl + C` 키를 누르면 맥의 클립보드에 복사가 이루어 집니다.
