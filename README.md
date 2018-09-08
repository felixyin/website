# MyWebsite

基于`python3.7`和`Django2.0.7`的个人网站+个人博客。   


## 主要功能：
- 主页
    - 大图切换显示
    - 最近项目
    - 最近文章
    - 标语显示
- 服务~~(临时禁用)~~
    - 服务列表
    - 服务详细
        - 服务介绍
        - 服务特点
        - 服务流程
        - 相关案例
- 案例
    - 案例列表
        - 按服务过滤
    - 案例详情
        - 类似案例
        - 是否开源
        - 附件
        - 外链
- 博客
    - 文章，页面，分类目录，标签的添加，删除，编辑等。文章及页面支持`Markdown`，支持代码高亮。
    - 支持文章全文搜索。
    - 完整的评论功能，包括发表回复评论，以及评论的邮件提醒，支持`Markdown`。
    - 侧边栏功能，最新文章，最多阅读，标签云等。
- 其他
    - 集成了简单的图床功能。
    - 集成`django-compressor`，自动压缩`css`，`js`。
    - 支持`Memcache`缓存，支持缓存自动刷新。
    - 简单的SEO功能，新建文章等会自动通知Google和百度。
    - 支持Oauth登陆，现已有Google,GitHub,facebook,微博登录。
    - 网站异常邮件提醒，若有未捕捉到的异常会自动发送提醒邮件。
    - 集成了微信公众号功能，现在可以使用微信公众号来管理你的vps了。
## 安装
使用pip安装：  
`pip install -Ur requirements.txt`

如果你没有pip，使用如下方式安装：    
OS X / Linux 电脑，终端下执行:  

    curl http://peak.telecommunity.com/dist/ez_setup.py | python
    curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python

windows电脑：  
 下载 http://peak.telecommunity.com/dist/ez_setup.py 和 https://raw.github.com/pypa/pip/master/contrib/get-pip.py 这两个文件，双击运行。  

### 配置
配置都是在`setting.py`中.部分配置迁移到了后台配置中。

很多`setting`配置我都是写在环境变量里面的.并没有提交到`github`中来.例如`SECRET_KEY`,`OAHUTH`,`mysql`以及邮件部分的配置等.你可以直接修改代码成你自己的,或者在环境变量里面加入对应的配置就可以了.

`test`目录中的文件都是为了`travis`自动化测试使用的.不用去关注.或者直接使用.这样就可以集成`travis`自动化测试了.

`bin`目录是在`linux`环境中使用`Nginx`+`Gunicorn`+`virtualenv`+`supervisor`来部署的脚本和`Nginx`配置文件.可以参考我的文章:

>[使用Nginx+Gunicorn+virtualenv+supervisor来部署django项目](https://www.lylinux.org/%E4%BD%BF%E7%94%A8nginxgunicornvirtualenvsupervisor%E6%9D%A5%E9%83%A8%E7%BD%B2django%E9%A1%B9%E7%9B%AE.html)

有详细的部署介绍.

为了安全起见，没有把`SECRET_KEY`上传到Github中而是在环境变量中配置的，如果你想要正常运行的话，需要修改`settings.py`中的`SECRET_KEY`为你自己的就可以了。  
如：`SECRET_KEY = 'n9ceqv38)#&mwuat@(mjb_p%em$e8$qyr#fw9ot!=ba6lijx-6'`


## 运行

 修改`Website/setting.py` 修改数据库配置，如下所示：

     DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.mysql',
            'NAME': 'website',
            'USER': 'root',
            'PASSWORD': 'password',
            'HOST': 'host',
            'PORT': 3306,
        }
    }

### 创建数据库

 终端下执行:

    ./manage.py makemigrations
    ./manage.py migrate
### 创建超级用户

 终端下执行:

    ./manage.py createsuperuser
### 创建测试数据
终端下执行:

    ./manage.py create_testdata
### 收集静态文件
终端下执行:  

    ./manage.py collectstatic --noinput
    ./manage.py compress --force
### 开始运行：
 执行：
 `./manage.py runserver`





 浏览器打开: http://127.0.0.1:8000/  就可以看到效果了。
## 更多配置:
[更多配置介绍](/bin/config.md)
 ## 问题相关

 有任何问题欢迎提Issue,或者将问题描述发送至我邮箱 `1052921694@qq.com`.我会尽快解答.推荐提交Issue方式.
