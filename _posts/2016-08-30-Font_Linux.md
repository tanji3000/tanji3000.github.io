---
layout: post
title:  "리눅스에서 윈도우 폰트를 사용하는 방법"
date:   2016-08-30 00:57:23
---

리눅스에서 윈도우 폰트를 사용하는 방법입니다.

보통 `.ttf` 파일을 리눅스로 가져가서 아래의 경로에 폰트를 복사합니다.

CentOS 6.8 기준으로는 해당 경로에 가시면 Font Family로 하위폴더로 정리가 되어 있습니다.

    /usr/share/fonts/
    
위의 경로에 임의로 `windows` 라는 디렉터리를 만들고 그 안에 ttf 파일을 복사합니다.

이제 폰트 캐쉬를 갱신합니다.

    $  fc-cache -f -v
    
그럼 윈도우 폰트를 LibreOffice 및 Firefox 등에서 사용할 수 있습니다.


