---
layout: post
title:  "xargs vs. exec {}"
date:   2015-09-05
Tags:   xargs, exec

---

> This is where -exec breaks down and xargs shows its superiority. When you use -exec to do the work you run a separate instance of the called program for each element of input. So if find comes up with 10,000 results, you run exec 10,000 times. With xargs, you build up the input into bundles and run them through the command as few times as possible, which is often just once. When dealing with hundreds or thousands of elements this is a big win for xargs.
> \`  Daniel Miessler라는 정보보안 전문가의 글 중에서.. 


xargs와 exec 중 뭘 쓸까 매번 고민했는데, 결국 xargs가 exec 보다 좋다는 이야기... 


참고

- [Daniel Miessler][1]

[1]:	https://danielmiessler.com/blog/linux-xargs-vs-exec