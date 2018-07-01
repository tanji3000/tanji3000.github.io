---
layout: post
title:  "R 특정 Column 삭제 방법"
date: 2018-07-01 21:19:00
author: Tanji
Tags: R, subset, column, remove, "data frame"
categories: R
---

특정 Language를 배울 때 내가 사용하면서 필요한 내용들을 하나하나 찾아가면서 학습하는 것이 가장 효율 적인 것 같습니다.   
   
그래서 오늘부터는 하나씩 간단하게 예제를 풀이하는 내용들을 올리겠습니다.

R에서 특정 Column을 삭제하는 방법은 subset이라는 함수를 사용하면 됩니다.

상황) test라는 이름의 data.frame에서 Temperature라는 이름의 variable(column) 삭제하는 방법

해결)
``` 
result <- subset(test, select = -c(Temperature))
```

* `select`를 이용해서 `Temperature`라는 variable 이름을 떨구라는 (`-` 기호) 의미   
* `c()`는 백터 연산을 의미   

해당 결과를 result 라는 data.frame에 저장한다는 의미입니다.
