#!/usr/bin/env bash

send=`date '+%Y%m%d-%H%M%S'`

# 压缩media目录下用户上传的图片到备份目录，并按日期命名
tar -czvf  /root/backup/media-${send}.tar.gz /root/website/website/media/


cd /root/website/website/media/


# 查看一下大于500k的图片
echo '要优化的大于500k的图片：'
find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k



echo '正在压缩图片，可能需要点时间，请耐心等待~~~~'

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;

find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k -exec convert -resize 90%x90% {} {} \;



echo '优化后大于500k的图片：'
find /root/website/website/media/ -regex '.*\(jpg\|JPG\|png\|jpeg\)' -size +500k


# 回到之前的目录
cd -


#for i in /root/website/website/media/*.jpg; do jpegoptim $i; done

#pngcrush -brute -d "/root/website/website/media/" *.png

