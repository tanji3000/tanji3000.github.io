---
layout: post
title:  나와 비슷한 사람들이 쓰는 운영체제
date:   2017-11-19
Tags:   Mac, 맥, MacOS, OS, 운영체제
---

얼마 전 학회에 참석했다. 외국의 유명한 석학들의 발표가 이어졌다. 나는 학회에 참석하면 주로 뒷자리에 앉아서 이야기를 듣는 편인데, 주변을 둘러보니 Mac을 쓰는 학생들이 많이 보였다. 요즘은 수년 전에 비해 국내에도 Mac이 많이 보급된 것 같다. 사과 마크와 깔끔한 디자인과 제품의 훌륭한 완성도 때문에 주변에 애호가들도 많이 보인다. 학회장에는 대부분 MacBook Pro 모델을 사용하고 있었다. 터치 바가 포함된 값비싼 MacBook Pro도 여럿 보였다. 여담이지만, 외국에서는 가격이 저렴한 Air 모델 판매량이 높은데, 우리나라에서는 Pro 모델 판매량이 더 높다는 기사를 본 적이 있다. 진짜 그런것 같았다. 나는 MacBook Pro와 MacBook을 쓴다. 나만 하더라도 슈퍼컴퓨터로 과학 계산을 하다 보면 MacOS의 편리함 때문에 꾸준히 Mac을 사용할 수밖에 없다. 물론 Windows 기반의 Laptop 컴퓨터에 Ubuntu나 CentOS 같은 운영체제를 사용하는 방법도 있다. 하지만 Mac은 하드웨어와 MacOS라는 운영체제가 정말 최적화가 잘 되어 있는 느낌이다.

옆에 앉은 한 학생의 컴퓨터 화면을 슬쩍 보니, 까만 바탕에 흰 글씨가 가득한 터미널(Terminal)을 열어놓고, 무언가 열심히 입력하고 있는 모습이 보였다. vi editor로 텍스트 내용을 편집하는 모습들을 보니, 어딘가 모르게 반가웠다. Mac이라는 운영체제는 무엇이고 과학 계산을 하는 사람들이 Mac을 어떻게 활용하는지 간단히 소개하고자 한다.


#### Mac OS
맥은 다윈(Darwin)(다윈은 아이폰의 운영체제인 iOS의 뼈대 이기도 하다)이라는 Unix 계열의 커널에 화려한 GUI를 얹어 놓은 운영체제이다. 연제 MacOS Sierra 버전까지 약 18년의 역사를 가지고 있다. MacOS의 GUI 뒤에는 텍스트 환경인 Terminal이 존재한다. 그렇기 때문에 MacOS는 GUI와 Terminal 환경에서 자유롭게 사용할 수 있다. Mac은 주로 전문가들이 사용하는 컴퓨터로 알려져 있다. 맥을 10년 정도 사용해본 나도 그렇게 생각한다. 외국에서는 Mac의 점유율이 정말 높다. 우리나라도 Mac의 보급률은 매우 높아졌다. 하지만, 우리나라에서 Mac을 쓰는 것은 매우 불편하다. ActiveX와 공인인증서 때문이다. 따라서 맥을 사용하는 사람들은 Apple에서 기본적으로 제공하는 부트캠프를 이용해서 Windows 설치해서 멀티 부팅을 해서 사용하거나, Parallels나 VMWare라는 유료 소프트웨어를 구매해서 Mac 구동중에 Windows를 동시에 구동해서 사용한다. 히자만, 이러한 방법들은 매우 번거롭고 복잡하고 빠르고 안정적이지 않다. 그래서 나는 일반인들에게 Mac을 추천하지 않는다. 필자는 맥을 두대 가지고 있는데, 한대에만 Mac에 Windows를 설치가 가끔 사용하는 편이다.

<br>
#### 슈퍼컴퓨터와 Mac의 OS
대규모 연산을 하는 슈퍼컴퓨터들은 대부분 Redhat 리눅스나 CentOS와 같은 Redhat 계열의 운영체제를 사용한다. 그리고 이들과 자유롭게 데이터를 주고받으면서 무언가를 하기 위해서는 리눅스나 유닉스와 같은 운영체제가 매우 편리하다. 슈퍼컴퓨터와 대부분의 연결은 SSH(Secure Shell)라고 불리는 응용프로그램 또는 프로토콜을 활용하는데, 암호화 기법을 사용하기 때문에, 통신이 노출된다 하더라도 암호화된 문자로 노출되어 안전하다. 지난 2014년 이른바 '쉘 쇼크(ShellShock)'라고 불리는 보안 이슈로 야후의 해킹 사건이 유명하다. 하지만, 지속적으로 코드들이 개선되면서, 여전히 모든 슈퍼컴퓨터는 SSH를 이용하여 서비스되고 있다.

SSH를 통한 연결을 위해서는 Terminal이 필요하다. MacOS에는 편리하지는 않지만 기본적으로 'Terminal'이라는 이름의 App을 제공한다. 필자는 iTerm이라는 App을 주로 사용하는데, 무료인 데다가 기본 App에 비해서 유용한 기능들을 많이 제공하기 때문에, 처음 Mac을 사용하려 하는 사람들에게 추천한다.

<p><img src="/img/R1280x0.jpeg" alt="Smiley face" img style="margin-left: -1.5em; margin-right: 1.5em"> This is some text. This is some text. This is some text.</p>

<!--![Forest]({{ site.baseurl }}/img/R1280x0.jpeg)-->

<br>
#### X-forwarding
위와 같은 텍스트 환경에서도 또 다른 창에 GUI 소프트웨어를 열 수 있는 방법이 있다. 슈퍼컴퓨터에서. GUI를 지원하는 소프트웨어들은 X-forwarding을 이용하여 Teminal 환경에서도 GUI를 열 수 있게 해주는데, MacOS에서는 Xquartz라는 X-forwarding 소프트웨어를 제공해준다. 물론 Windows에서도 Xming이라는 유명한 무료 소프트웨어가 있긴 하지만, Xquartz에 비해서 매우 느리고 불안정하여 Terminal에서 상당수의 GUI 소프트웨어를 열 수 없는 문제가 있다.