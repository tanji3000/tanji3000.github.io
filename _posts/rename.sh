#!/bin/bash

for i in ./2016-10-09-dropbox_github.markdown ./2015-07-10-Linux_Zip.markdown ./2015-10-21-cmake-install.markdown ./2015-05-28-Linux-Epelerror.markdown ./2015-06-08-vim_window_split.markdown;do

    sed -i /categories/s/Linux/"리눅스_기술문서"/g $i

done

