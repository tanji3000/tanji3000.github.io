---
layout: post
title:  "SONY 캠코더 영상 처리하기 (DVD 제작)"
date:   2015-10-23
Tags:   SONY, DVD, 캠코더, mts, eac3to, tsMuxeR, AVCHD

---

SONY 캠코더로 찍은 영상들은 AVCHD 형식 (.mts) 로 저장이 되더군요. 찍을 때마다 새로운 파일이 순차적으로 생성되어 병합이 필요할 때가 있습니다.

알아보니 [eac3to](http://www.videohelp.com/software/eac3to) + [tsMuxeR](http://www.videohelp.com/software/eac3to) 을 이용하여 하나의 파일로 병합이 가능하다. 물론 윈도우에서 Command 명령어를 이용해야 하는 불편함이 있지만 무료로 이용가능합니다.

편리하게도 [.bat 파일을 만들어 주는 사이트](http://avchdvideos.blogspot.kr/p/creating-batch-file.html)를 이용하면 손 쉽게 스크립트 파일 생성이 가능합니다.

하지만, 문제가 있습니다.

무조건 번호순으로 정렬이 되기 때문에 약간의 script가 필요하여 Python으로 .bat 파일내부에 파일 순서 변경해 줍니다.

    #!/usr/local/bin/python
    
    f = open("1", 'r')

    for i in range (1, 120):
    
    print('"'+'+.\\'+"%05d" %int(f.readline())+'.MTS'+'"')

    f.close()


완료된 이후에는 병합된 mts 파일을 [DVDFlick](http://www.dvdflick.net)을 이용하여 파일을 생성하고 DVD로 만들면 된다.

