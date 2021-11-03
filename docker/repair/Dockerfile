FROM moxm/java:1.8-full

MAINTAINER mjz(miaojinzhou@ordinaryroad.tech)

RUN mkdir -p /repair/app

WORKDIR /repair/app

COPY ./app/repair.jar app.jar

EXPOSE 8080

# 防止日志中文乱码
ENV LANG=C.UTF-8

ENV TZ=Asia/Shanghai JAVA_OPTS="-Xms128m -Xmx256m -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=pro"

# MySQL配置 TODO 修改MYSQL_PWD_PRO root账户密码
ENV MYSQL_HOST_PRO=repair-mysql MYSQL_PORT_PRO=3306 MYSQL_USERNAME_PRO=root MYSQL_PWD_PRO=root

CMD sleep 10; java -jar $JAVA_OPTS app.jar
