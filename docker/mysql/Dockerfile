FROM mysql/mysql-server:8.0.26

MAINTAINER mjz(miaojinzhou@ordinaryroad.tech)

# TODO 修改MYSQL_ROOT_PASSWORD root账户密码
ENV TZ=Asia/Shanghai MYSQL_ROOT_PASSWORD=root

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./sql/init.sql /docker-entrypoint-initdb.d
COPY ./sql/jiangnanuetc.sql /docker-entrypoint-initdb.d