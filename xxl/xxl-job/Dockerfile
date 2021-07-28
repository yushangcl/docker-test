FROM maven:3.5-jdk-8-alpine AS build
MAINTAINER huahui.wu <gayhub@live.cn>

WORKDIR /src
RUN apk add --no-cache git \
    && git clone https://github.com/xuxueli/xxl-mq \
    && cd xxl-mq-admin \
    && mvn package -Dmaven.test.skip=true

FROM openjdk:8-jre-slim
MAINTAINER huahui.wu <gayhub@live.cn>

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY --from=build /src/xxl-mq/xxl-mq-admin/target/xxl-mq-admin-*.jar /app.jar

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /app.jar $PARAMS"]