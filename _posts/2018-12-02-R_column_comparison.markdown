---
layout: post
title:  "R data frame간 column 내용 비교"
date: 2018-12-02 21:36:13
author: Tanji
Tags: R, data.frame, column, 데이터 처리
categories: R
---


수 많은 데이터를 확인하고 검증하는 작업은 매우 필요한 일입니다. 특히 행렬 형태로 되어 있는 데이터(R에서는 data.frame)를 비교하는 작업은, 데이터를 확인하고 점검하는 단계에서 수도 없이 반복하는 일입니다.

오늘은 데이터를 비교하는 예제를 하나 풀어보겠습니다.

#### 상황

- 아래와 같이 두개의 data가 있다고 가정합니다.
- 두 데이터를 비교해 보면, 두번째 데이터 프레임(df2)에는, 2번째 Lee 라는 데이터가 없는 것을 확인 할 수 있습니다.

- 우리가 만든 df1, df2에 있는 name이라는 column을 비교해 보도록 하죠.
- 만일 df1의 name이 df2의 name에 있으면 "Yes", 없으면 "No" 라고 판별을 하도록 합니다.



df1

| id  | name 
|---|---
|  1 | Jung  
|  2 | Lee  
|  3 | Kim  
|  4 | Hwang  
|  5 | Hong 

```r
id <- (1:5)
name <- c("Jung", "Lee", "Kim","Hwang","Hong")
df1 <- data.frame(id, name)
```

df2

| id  | name 
|---|---
|  1 | Jung   
|  2 | Kim  
|  3 | Hwang  
|  4 | Hong

```r
id <- (1:4)
name <- c("Jung", "Kim","Hwang","Hong")
df2 <- data.frame(id, name)
```

### ifelse를 이용한 조건문 활용

이러한 경우 R에서는 ifelse문을 이용하여 비교할 수 있습니다.

```r
ifelse(df1$name %in% df2$name, "Yes", "No")

[1] "Yes" "No"  "Yes" "Yes" "Yes"
```
-  ```df1$name``` 이 ```df2$name``` 안에 (```%in%```) 있으면 Yes를 반환하고, 없으면 No를 반환하라는 의미입니다.

그러면 아래와 같이, 결과를 df1의 세번째 column에 저장해 봅시다.

df1

| id  | name | check
|---|---|---|
|  1 | Jung  | Yes
|  2 | Lee  | No
|  3 | Kim  | Yes
|  4 | Hwang  | Yes
|  5 | Hong | Yes

```r
df1$check <- ifelse(df1$name %in% df2$name, "Yes", "No")
```

- 방법은 간단합니다. ```df1$check``` 에 저장(```<-```) 하라고 앞에 붙여주기만 하면 됩니다.


저는 Linux/Unix를 주로 사용하고 대부분의 데이터 처리를, Shell로 처리하고, 가끔 Python을 활용하기도 합니다.

처음에 수집되어야 할 데이터에 대해, 수집 중간중간 혹은 수집이 완료 된 이후에 목표했던 모든 데이터가 정상적으로 수집되었는지 확인하는 작업을 할 때에는 shell script혹은 python을 이용하여 코트를 작성하는 것보다 R을 이용하면 코드 한줄로 해결할 수 있습니다.

오늘도 간단한 상황에서 데이터를 처리하는 방법에 대해 연습해 보았습니다. 아직 시작 단계에 계신 분들이라면, 해당 코드들을 복사에서 붙여 넣지 말고 직접 입력해보는 것을 권유드립니다.

가장 빨리 배우는 방법은 직접 필요한 데이터를 처리해 보면서 막히는 부분을 공부하면서 해결하는 것입니다.