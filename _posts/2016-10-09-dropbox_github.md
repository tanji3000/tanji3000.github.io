---
layout: post
title:  "Git 저장소 사용법 정리"
date:   2016-10-09
Tags:   Dropbox, Github

---

dropbox를 github 저장소로 사용하는 방법을 정리해 놓은 blog이다. 아직도 github 저장소의 흐름을 정확히 이해하지 못했다. 나에겐 복잡하다.

두대의 컴퓨터를 사용중인데, 한 컴퓨터에서 작업한 것을 github에 동기화 하고 다른 컴퓨터를 사용할 때 online에 있는 내용을 로컬로 동기화 한 후 작업을 하려고 한다.

아래 사이트가 도움이 될 것 같다.

---

### Case by Case

**Github로 현재 컴퓨터에서 upstream이 가능하도록 하는 방법**

	$  git push --set-upstream origin master

위의 명령어를 실행하로 `ID`와 `Password`를 입력해주면 설정이 완료된다

**변경내용 Push 하는 방법**

	$  git add -A && git commit -m "update" && git push

**다른 컴퓨터에서 Online 내용과 동기화 하는 방법**

	$  git pull



### 에러 해결 방법

---

	fatal: refusing to merge unrelated histories

. history matching이 안될 때 발생한다. 

. `git pull origin master --allow-unrelated-histories` 명령어로 해결이 가능하다.

---



---
참조

- [Dropbox 를 Git 저장소로 사용하기][1]
- [Github 흐름 이해하기 #2][2]
- [github pull 에러][3]

[1]:	http://byteclass.tistory.com/19
[2]:	https://blog.outsider.ne.kr/866
[3]:	http://cpdev.tistory.com/51