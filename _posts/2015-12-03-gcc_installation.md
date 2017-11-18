---
layout: post
title:  "gcc 설치가 쉬워졌다"
date:   2015-12-03
tag: gcc, mac

---

오랫동안 잘 모르고 있었던 것 같은데... gmp, mpfr, isl 등등을 일일이 설치해줬었는데... gcc 설치에도 configure 가 있었다.

El Capitan에서 테스트 해보니 4.9.3 까지는 에러가 난다. 5.2.0 버전은 정상적으로 설치가 가능하다.

```
$ wget ftp://ftp.kaist.ac.kr/gnu/gnu/gcc/gcc-5.2.0/gcc-5.2.0.tar.gz
$ tar xvfz gcc-5.2.0.tar.gz
$ mkdir objdir
$ cd gcc-5.2.0
$ ./contrib/download_prerequisites
$ cd ../objdir
$ ../gcc-5.2.0/configure --prefix=/Users/${USER}/Applications/gcc/5.2.0 --enable-languages=c,c++,fortran
$ make -j2 && make install
```

<br><br>

---
**See also.**

- [Installing GCC](https://gcc.gnu.org/wiki/InstallingGCC)
- Mac OS X 10.10.5 에 GCC 5.2.0 설치하기
