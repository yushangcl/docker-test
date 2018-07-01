FROM maven:3.5-jdk-8-alpine AS build
MAINTAINER huahui.wu <gayhub@live.cn>

WORKDIR /src
RUN apk add --no-cache git \
    && git clone https://github.com/apache/incubator-dubbo-ops \
    && cd incubator-dubbo-ops \
    && mvn package -Dmaven.test.skip=true

FROM logr/8-jre-alpine
COPY --from=build /src/incubator-dubbo-ops/dubbo-admin/target/dubbo-admin-0.0.1-SNAPSHOT.jar .
RUN mv dubbo-admin-0.0.1-SNAPSHOT.jar dubbo-admin.jar
