---
layout: post
title:  "VASP, Gaussian에서 원자 위치 고정하는 방법"
date:   2015-11-05
author: Tanji
Tags:   VASP, Gaussian
categories: Research
---

물리, 재료, 화학 분야에서 많이 이용하는 VASP과 Gaussian code에서 꼭 필요한 기능인 원자 위치 고정하는 방법에 대해서 정리해보려고 합니다. 이제 많이 사용하지 않는 코드가 되어서 그런지 가끔 사용해야 할 때 명확히 기억이 나지 않네요.  
  
**1. VASP에서 원자 위치 고정하기**  

   ` POSCAR 파일에서 설정해 줍니다. graphite로 예를 들면,  
   . 6번째 줄 원자 개수 적는 라인 바로 아래 Selective dynamics 라고 적어줍니다.  
   . Atom position 적는 위치에 이어서 띄어쓰기를 이용해 T T T 라고 적어줍니다.  
   . F F F 라고 적어주면 x, y, z 모든 position을 고정하라는 뜻입니다.
   

    C graphite
    1
    2.13 3886594925 -1.232 0
    0 2.464 0
    0 0 6.711	
    4
    Selective dynamics
    Direct
    0.00000 0.00000 0.25000   F F F
    0.00000 0.00000 0.75000   T T T
    0.33333 0.66667 0.25000   F F F
    0.66667 0.33333 0.75000   T T T   

원자가 많은 경우는 어떻게 할까요?  vi editor를 이용합니다.  


 ctrl+V로 블록을 설정하고  
	
	:g/$/s//  T T T
  
 그 이후에 바꾸고자 하는 원자들을 `ctrl+V`로 블록 설정하고 텍스트 교체를 진행합니다.  
	
	:s/T T T/F F F/g

<br>
**2. Gaussian에서 원자 위치 고정하기**  

benzene 단분자를 예로 들면
opt 부분에 Modredundant 라는 옵션을 추가해 줍니다.
atom position 맨 마지막에 한줄을 빈줄로 두고 바로 다음줄에 `X 1 F` 와 같이 고정하고 싶은 모든 원자들에 대해 한줄씩 작성해 주면 됩니다.

    %chk=benzene.chk
    %mem=256GB  
    %nprocshared=48  
    #p b3lyp/6-31g** opt=(maxcycle=999, Modredundant) scf=(maxcycle=999)
      
    Benzene opt at ground state  

    0  1  
    C         -2.33880        1.16580        0.00010  
    C         -1.56900       -0.16780        0.00000  
    C         -0.02900       -0.16790        0.00010  
    C          0.74110        1.16570        0.00020  
    C         -0.02880        2.49940        0.00010  
    C         -1.56880        2.49940        0.00000  
    H         -3.47880        1.16590        0.00020  
    H         -2.13900       -1.15500       -0.00010  
    H          0.54090       -1.15520        0.00010  
    H          1.88110        1.16560        0.00030  
    H          0.54120        3.48660        0.00020  
    H         -2.13880        3.48670       -0.00010  
  
    X 1 F  
    X 2 F  
    X 3 F
    
    
