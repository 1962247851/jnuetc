# jnuetc

江南大学团通社电子技术部线上报修系统_后端

# 相关项目

1. 后端：https://github.com/1962247851/jnuetc
2. 安卓App：https://github.com/1962247851/jnuetc_android
3. 安卓App（Kotlin）：https://github.com/1962247851/jnuetc_android_kotlin
4. 微信小程序：https://github.com/1962247851/jnuetc_MiniProgram

## maven安装MiPush SDK到本地仓库

```
mvn install:install-file -Dfile='MiPush_SDK_Server_Http2_1.0.5.jar' -DgroupId='mi.push.sdk.server.http2' -DartifactId='MiPush' -Dversion='1.0.5' -Dpackaging=jar
```

## 打包

maven package成功后会自动复制jar包到 `repair/app` 目录下

## 使用Docker部署

### 防火墙放行

|端口号|是否必须|说明|
|----|----|----|
|444|必须|报修后台唯一API接口，并且必须以https协议访问|
|3306|MySQL|如果需要远程连接这需要放行|

### 1. 安装Docker和Docker Compose

[Docker入门（一）安装Docker](https://ordinaryroad.top/article/52.html)

[Docker入门（二）安装Docker-Compose](https://ordinaryroad.top/article/53.html)

### 2. 个性化配置

1. MySQL初始化脚本

- mysql/sql/init.sql：无需修改，允许所有IP远程连接
- mysql/sql/jiangnanuetc.sql：必须修改：应用初始化sql，需要增加初始化 `t_user` 表的SQL

2. MySQL root账户密码

- mysql/Dockerfile：需要修改，MYSQL_ROOT_PASSWORD

3. Nginx反向代理域名

- nginx/conf/nginx.conf：需要修改，server_name

4. Nignx域名证书

- nginx/ssl/repair-server.crt：需要修改，并且文件名必须一致
- nginx/ssl/repair-server.key：需要修改，并且文件名必须一致

5. repair

- repair/Dockerfile：需要修改，MYSQL_PWD_PRO

### 3. 将 `docker` 目录上传到服务器

### 4. 构建并运行

> docker compose v2需要将 `docker-compose` 修改为 `docker compose`

```shell
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up -d
```

### 说明

#### 数据持久化

部署成功后将自动创建数据卷挂载目录

- 图片目录将挂载在 `repair/data/pictures/` 目录下
- MySQL数据将挂载在 `mysql/data` 目录下

#### 数据库

如需远程连接数据库，需要放行服务器和服务器控制台对应的端口

帐号为root，密码为 `mysql/Dockerfile` 中配置的 `MYSQL_ROOT_PASSWORD`