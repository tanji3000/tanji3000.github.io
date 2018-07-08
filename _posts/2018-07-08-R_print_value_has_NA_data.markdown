---
layout: post
title:  "R 결측치 다루는 기본 방법"
date: 2018-07-08 21:36:13
author: Tanji
Tags: R, 결측치, csv
categories: R
---


R에서 결측치가 있는 항목을 다루는 방법은 정말 자주 필요한 기능중 하나입니다.

오늘은 결측치를 다루는 예제 하나를 풀어보겠습니다.

###상황

- 아래의 데이터가 있다고 가정해 봅시다.   
- Kim의 English 점수에 결측치가 있네요.

| id  | name  | Math  | English  | Physics  |
|---|---|---|---|---|
|  1 | Jung  | 98  | 99  | 100  |
|  2 | Lee  | 55  | 98  | 100  |
|  3 | Kim  |  76 |   | 23  |
|  4 | Hwang  | 22  | 99  | 12  |
|  5 | Hwang  | 22  | 99  | 12  |

먼저 예제 파일을 다운로드 하여 R에 Data Frame 형태로 Import 해봅니다.

```r
> getwd()
[1] "/Users/david"
```
현재 경로는 확인해보니 /Users/david 즉 제 홈디렉토리에 위치하고 있네요.

```r
> setwd("~/Downloads")
> getwd()
[1] "/Users/david/Downloads"
```

`setwd()`를 이용해서 Downloads 디렉토리로 경로를 변경해 줍니다.

이제 다운로드 받은 예제 파일을 활용하시면 되고, 파일이 Downloads에 없다면 복사해 주시면 됩니다. 준비가 되었으면 `.csv` 파일을 import 해봅시다. `read.csv`라는 패키지를 사용합니다.

```r
score <- read.csv("Example_R_NA.csv", header=T)
```
파일이름 `example_R_NA.csv`를 `"(큰따옴표)`로 묶어줍니다. `header=T`는 id, name, Math, English, Physics가 있는 헤터를 불러와서 Variable 이름으로 만들어 줍니다.

궁금하신 분들은 `header=T` 부분을 적용했을 때와 적용하지 않았을 때를 비교해 보시면 어떤 의미인지 확인하실 수 있습니다. 

#### data.frame 결측치 확인하기
먼저 우리가 저장한 score라는 data frame에 결측치가 있는지 확인해 봅니다.

```r
> is.na(score)
        id  name  Math English Physics
[1,] FALSE FALSE FALSE   FALSE   FALSE
[2,] FALSE FALSE FALSE   FALSE   FALSE
[3,] FALSE FALSE FALSE    TRUE   FALSE
[4,] FALSE FALSE FALSE   FALSE   FALSE
```
위의 테이블을 보면 Kim의 English 점수에 결측치가 있기 때문에 이 부분만 TRUE라고 표기 된 것을 볼 수 있습니다.

현재 우리는 5x4 데이터를 가지고 보고 있습니다. 이렇게 한눈에 들어오는 데이터는 이런 방법으로 데이터를 확인할 수 있지만, 수십 수백만 줄의 데이터를 처리하다보면 결측 데이터를 확인하고 처리하고 분류하는 작업들이 꼭 필요한 상황이 오게 됩니다.

#### data.frame 중 English 점수에 결측치가 있는 name 추출하기

상황을 조금 바꾸어 이제 English 점수에 결측치가 있는 name을 추출을 해봅시다.

```{r}
> score[is.na(score$English),]
  id name Math English Physics
3  3  Kim   76      NA      23
```

이제 전체를 괄호로 묶은 후 가장 마지막에 `$name`이라고 붙여주면 이름을 출력해줍니다.

```{r}
(score[is.na(score$English),])$name
[1] Kim
Levels: Hwang Jung Kim Lee
```

그런데 결과 Kim 뿐만 아니라 바로 아랫줄에 Levels: Hwang Jung Kim Lee라고 모두 표기가 되는 것 보이지죠? 기본적으로 텍스트를 포함한 Variable은 R에서 Factor로 간주하기 떄문입니다. 이럴 경우 Factor를 `as.charactor`라는 명령어를 이용해 Charactor 형태로 변경해 주면 됩니다.

```{r}
> as.character((score[is.na(score$English),])$name)
[1] "Kim"
```

이 부분은 R을 사용하면서 실수하기 쉬운 부분으로 많은 사람들이 stackoverflow에 질문을 올리는 부분이기도 합니다. 많이 헷갈리는 부분이죠...

조금더 깊은 부분은 이어서 올리도록 하겠습니다.