# !/usr/bin/env python
#  -*- coding:utf-8 -*-

import json

import http1


def push_url2baidu(url):
    bdurl = 'http://data.zz.baidu.com/urls?site=www.yinbin.ink&token=rRK3EjeKMIjMeDgG'
    result = http1.request(bdurl, body=url).body
    return json.loads(result)


if __name__ == '__main__':
    url = 'http://www.yinbin.ink/project/17'
    result = push_url2baidu(url)
    print(result)

