# import json
from enum import IntEnum

import http1


class EnumBaiDu(IntEnum):
    create = 1,
    update = 2,
    delete = 3


def push_url2baidu(my_url, enu):
    # FIXME 当百度收录后，再打开这个，因为历史的一些文档，还没有被百度收录。
    # if enu == EnumBaiDu.create:
    #     bd_url = 'http://data.zz.baidu.com/urls?site=www.yinbin.ink&token=rRK3EjeKMIjMeDgG'
    # elif enu == EnumBaiDu.update:
    #     bd_url = 'http://data.zz.baidu.com/update?site=www.yinbin.ink&token=rRK3EjeKMIjMeDgG'
    # elif enu == EnumBaiDu.delete:
    #     bd_url = 'http://data.zz.baidu.com/del?site=www.yinbin.ink&token=rRK3EjeKMIjMeDgG'
    # else:
    bd_url = 'http://data.zz.baidu.com/urls?site=www.yinbin.ink&token=rRK3EjeKMIjMeDgG'
    # print(bd_url)
    print(my_url)
    _result = http1.request(bd_url, body=my_url).body
    print(_result)
    # return json.loads(result)
    return _result


if __name__ == '__main__':
    url = 'http://www.yinbin.ink/project/17'
    result = push_url2baidu(url, EnumBaiDu.create)
    print(result)
