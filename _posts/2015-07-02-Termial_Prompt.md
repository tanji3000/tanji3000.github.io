---
layout: post
title:  "Terminal Prompt 꾸미기"
date:   2015-07-02 20:00:23
---


Terminal 이용시 예픈 프롬프트 만들기...

```
$  vi ~/.bash_profile
```

그리고 나서 아래 한줄을 입력해 줍니다.

```
$  export PS1="\u@\[$(tput bold)\]\h\[$(tput sgr0)\] \w \\$\[$(tput sgr0)\]"
```

설정값을 적용해 줍니다.

```
$  source ~/.bash_profile
```


<br>
그럼 아래와 같이 프롬프트가 변경이 됩니다. 개인적으로는 hostname 부분이 bold 처리가 되어 있어야 구분이 쉬어서 보기 편리합니다.

아래에 .bashrc prompt generation 해주는 사이트 링크로 이어지면 프롬프트를 자유자재로 변경 가능하니 참고하시기 바랍니다.

<br>
**See also.**

- [.bashrc PS1 generator](http://bashrcgenerator.com/)
