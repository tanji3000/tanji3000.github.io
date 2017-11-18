---
layout: post
title:  "iTerm2 터미널 탭과 윈도우 타이틀바에 현재 경로 표시하기"
date:   2015-09-05 20:03:23
---


iTerm2는 지속해서 개발자의 지속적인 업데이트를 통해 정말 강력한 맥용 터미널 프로그램으로 자리 잡았습니다. 개인적으로 간혹 불편한 기능들이 있어서 따로 해결하는 방법들을 종종 소개해 드리려고 합니다. 그중 하나가 탭이나 터미널에 절대 경로 표시입니다. 종종 5개 정도의 터미널을 열고 작업하는데요. 여기저기 디렉터리를 이동해 다니면 현재 어느 경로에 있는지 혼동될 때가 많습니다. pwd를 매번 입력하지 귀찮기도 하고요. 인터넷에서 찾아보니 해당기능은 .bash_profile에 아래와 같이 명령어 한 줄을 추가하면 해결할 수 있습니다. 

```
$  export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
```

이렇게 적용을 한 후 `source ~/.bash_profile` 또는 `iTerm을 재시작` 해주면 적용이 완료됩니다. 


**See also.**

[xinotes.net 의 PROMPT_COMMAND examples ](http://www.xinotes.net/notes/note/1262/)