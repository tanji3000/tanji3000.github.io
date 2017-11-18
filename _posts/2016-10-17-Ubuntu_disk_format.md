---
layout: post
title:  "Ubuntu - USB 포맷 방법"
date:   2016-10-17
Tags:   Ubuntu, USB, Format
---

Ubuntu에서 usb 포맷하는 방법을 정리해 본다.

일단 USB를 연결하고 fdisk로 연결된 파일시스템 목록을 확인해본다.

```
$ fdisk -l
```

USB 마운트를 해제 한다.

```
$ sudo umount /dev/sdb1
```

FAT32로 포맷하려면

```
$ sudo mkfs.vfat -F 32 /dev/sdb1
```

이름을 붙이고 싶으면 `-n` 옵션을 준다.

```
$ sudo mkfs.vfat -F 32 -n USB /dev/sdd1
```

NTFS 형식으로 포맷하는 방법은

```
$ sudo mkfs.ntfs /dev/sdb1
```