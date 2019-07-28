#!/bin/bash
echo '******************I am running***************'
echo 'please input images path:'
read imgPath
filePath="${imgPath}dj.txt"
cat $filePath
docker run it --rm -v
docker run -it --rm -v "$(pwd)/photo1:/code/images" -v "$(pwd)/odm_ortho_1:/code/odm_orthophoto" opendronemap/odm
