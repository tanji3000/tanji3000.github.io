---
layout: post
title:  CASTEP Convergence Failure
date:   2017-02-05
Tags:   DFT, CASTEP, SCF, Converge
author: Tanji
categories: Research
---

CASTEP에는 Khon-Sham 방정식을 풀기 위해 두개의 solver가 있다. density mixing (DM) 과 ensemble density functional theory (EDFT). DM 방법은 기본설정값이다. 설정하기 나름이지만 이전의 몇 step의 density들을 정해진 비율대로 mixing 해가면서 ground-state를 찾기 때문에 상대적으로 빠르지만 불안정해서 수렴이 안되는 경우가 많이 있다. EDFT 방법은 처음에 추정한 기저상태의 파동함수를 바로 계산하고 ground-state에 가까워지도록 계속 업데이트를 한다. 당연히 계산량이 많기 때문에 상대적으로 느리지만 안정적이다.

SCF Converge Fail 에는 여러 이유가 있지만 하나씩 Guide를 참고해서 해결하면 어렵지 않게 해결할 수 있다.

1. **Input 구조가 잘 못 된 경우일 가능성이 가장 높다.**

	특정 원자들 사이의 거리가 너무 가깝지는 않은지 살펴보면 도움이 된다. 예를 들어 표면의 C와 흡착 분자의 O가 결합하는 형태의 구조를 input으로 만드는 것을 예로 들면, 이 때 C-O 거리는 기본 C-O bond lengh 실험값을 기반으로 input을 만들면 도움이 된다. (수고스럽겠지만...)

1. **금속 시스템인 경우 `Fix_occupancy = true`로 설정한다.**
1. 
