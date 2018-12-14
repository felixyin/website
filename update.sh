#!/usr/bin/env bash

# 创建备份目录，如果不存在
mkdir /root/backup

send=`date '+%Y%m%d-%H%M%S'`


# 压缩media目录下用户上传的图片到备份目录，并按日期命名
tar -czvf  /root/backup/media-${send}.tar.gz /root/website/website/media/


# 切换到项目根目录
cd /root/website/website


# 覆盖本地的方式，检出代码
git fetch --all
git reset --hard origin/master
git pull


# 赋予updat命令权限（如果命令更新了，则权限会丢失）
sudo chmod 777 update.sh
sudo chmod 777 zipimg.sh


# 压缩图片 TODO 暂时不需要在更新后，立即压缩图片
#zipimg

# 清理静态资源
rm -rf /root/website/website/collectedstatic

# 收集静态文件，为nginx使用,免输入yes或no，默认yes
/usr/bin/expect <<-EOF
spawn python manage.py collectstatic
send "yes\n"
expect eof
EOF


# 生成数据库升级脚本
python manage.py makemigrations


# 执行数据库升级操作
python manage.py migrate


# 停止和启动memcached缓存服务
systemctl restart memcached
systemctl enable memcached
#systemctl status memcached


# 停止和启动web服务集群
killall -9 uwsgi
nohup uwsgi --ini uwsgi.ini & ls

# 停止和启动nginx
systemctl restart nginx
#systemctl status nginx


# 产看启动的集群进程，好放心
#ps -ef | grep uwsgi


# 回到之前的目录
cd -
ls
