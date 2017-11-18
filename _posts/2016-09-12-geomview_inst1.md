---
layout: post
title:  Geomview 1.9.5 설치 - 에러 해결방법
date:   2016-09-12 23:57:23
---

> The most difficult part was that the latest Geomview release (1.9.5) no longer generates liboogl.a. Assuming that it's functionality was subsumed into libgeomview.a, I changed the makefile to look for libgeomeview.a rather than liboogl.a, Measure compiled without error.
> 
> \- Christopher J. O'Brien     ([Original View](https://sourceforge.net/p/geomview/mailman/message/29503281/))

`liboogl.a` 라이브러리는 geomview (1.9.5) 에서는 더 이상 지원하지 않는다.
`/usr/local/lib` 경로에 가보면 `libgeomview.a`가 있는 것을 볼 수 있다.
이 라이브러리면 에러 없이 컴파일이 가능하다.


#### **Makefile of Wulffman 1.2.5p1**

```shell
# C++ compiler
CPP = g++

# C compiler
CC = gcc

# Directories for forms.h and qhull.h
INCLDIR = -I. -I/usr/include/qhull -I/usr/include

# Directory for geomview header files (for measure only)
#GVINCLDIR = -I$(GEOMVIEW_INCLUDE_DIR)
GVINCLDIR = -I/root/geomview-1.9.5/include

# Directories for -lforms and -lqhull
LIBDIR = -L/usr/lib

# Directory for liboogl.a (for measure only)
GVLIBDIR =

#C, C++ Compiler Flags
CFLAGS = -O2 -DHAVE_CONFIG_H
CPPFLAGS = -O2 -DHAVE_CONFIG_H

# If qhull is available, USE_QHULL and QHULL_LIB should be defined
# (i.e., the lines below this block should be uncommented). Qhull is
# highly recommended: the other algorithm is dreadfully slow.
USE_QHULL = -DUSE_QHULL
QHULL_LIB = -lqhull

# If you don't have qhull, uncomment the following two lines.
#USE_QHULL =
#QHULL_LIB =

# Distribution Directory
VERSION = 1.2.5
MEASURE_VERSION = 1.1
TAR_DIR = /users/ryan/geomview/dist_src
DIST_DIR = wulffman_$(VERSION)
MEASURE_DIST_DIR = measure_$(MEASURE_VERSION)  
```

wulffman module 설치

```
$ make wulffman
```

Measure module 설치

```
$ make measure
```


`.geomview`에 Extra Module 경로 설정

```shell
(emodule-define "wulffman" "/applic/wulffman_1.2.5p1/wulffman")  
(emodule-define "measure" "/applic/wulffman_1.2.5p1/measure”)
```

    
  
#### **Error 해결**

> In file included from mgopengl.c:34:0:
> mgopenglP.h:32:21: fatal error: GL/glu.h: No such file or directory
> compilation terminated.
> make[5](): *** [mgopengl.lo]() Error 1
> make[5](): Leaving directory `/home/woody/geomview-1.9.4/src/lib/mg/opengl'  

\>> mesa 라이브러리(libglu1-mesa-dev)를 설치 하면 해결된다.

`sudo apt-get install libglu1-mesa-dev`