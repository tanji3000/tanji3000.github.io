---
layout: post
title:  "Rsync 예제"
date:   2015-07-10 20:00:23
---

---
layout: post
title:  "Rsync 예제"
date:   2015-07-10 20:00:23
author: Tanji
Tags:   Shell, Rsync
categories: Shell
---


자주 사용하는 rsync 문법을 정리해 봅니다.


```
$  rsync -avzh --progress * root@remote_address:/path
```

<br>

**-avzh** : 압축 전송 및 속성 유지, 보통 네트워크 속도가 빠른 경우 -av 옵션만 해도 무방 

**--progress** : 복제 진행과정 표시
