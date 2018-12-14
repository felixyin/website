#!/usr/bin/env bash

# 停止和启动memcached缓存服务
systemctl restart memcached
systemctl enable memcached
systemctl status memcached


# 停止和启动web服务集群
killall -9 uwsgi
nohup uwsgi --ini uwsgi.ini & ls

# 停止和启动nginx
systemctl restart nginx
systemctl status nginx


# 产看启动的集群进程，好放心
ps -ef | grep uwsgi


# 回到之前的目录
cd -
