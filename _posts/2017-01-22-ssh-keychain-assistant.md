---
layout: post
title:  macOS Sierra - ssh-keychain 문제해결
date:   2017-01-22
Tags:   Linux, Mac, crontab 
---

macOS Sierra로 업그레이드한 이후부터 SSH Keychain을 사용하는 데 문제가 생겼다. 컴퓨터를 켜고 ssh key를 한번만 입력해주면 터미널을 사용하는 동안 암호 입력이 필요 없는 것이 정상적인 동작이지만, Sierra로 업그레이드한 이후부터는 ssh, scp, rsync를 사용할 때마다 key를 입력해주어야 하는 문제가 발생함. Google을 해보니 openSSH 7.3p1로 업데이트되면서 정책이 바뀐 것 때문이라고 함.

해결방법은 여러가지가 있지만, 가장 편리한 방법을 이용하기로 함.

`~/.ssh/config` 파일을 만들어 주고 파일 안에는 아래와 같이 입력해 준다.

```bash
Host * (asterisk for all hosts or add specific host)
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

참고로 openSSH 버전을 확인하는 방법은

```
ssh -V
```


**더보기**

- [Saving SSH keys in macOS Sierra keychain][1]

[1]:	https://github.com/jirsbek/SSH-keys-in-macOS-Sierra-keychain
