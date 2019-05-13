---
layout: post
title:  "Jekyll을 이용한 Github Page 만들기"
date:   2018-01-28 18:31:00
author: Tanji
Tags:   Blog, 블로그, Jekyll, Github, Page
categories: Shell
---

1. Ruby 버전을 확인한다.

```
ruby -v
```

1. 버전이 낮으면 homebrew를 이용하여 ruby 설치를 진행한다.

```
brew install ruby
```

1.  Gem 이용해 Jekyll 설치

```
gem install jekyll --user-install
```

`--user-install` 옵션을 이용하면 root권한이 필요 없이 사용자 홈 디렉터리에 설치가 이루어 진다.

1. Bundler 설치

```
gem install bundler --user-install
```

mkdir ~/Github
cd ~/Github
git clone github주소
cd ~/Github/repository이름

git config --global user.name 유저이름
git config --global user.email 유저이메일

git add .
git commit -m "update"
git push origin master
