FROM maven:3.5-jdk-8-alpine AS build
LABEL Author="gayhub@live.cn"

WORKDIR /src
RUN apk add --no-cache git \
    && git clone https://github.com/apache/incubator-dubbo-ops \
    && cd incubator-dubbo-ops \
    && mvn package -Dmaven.test.skip=true

FROM 8-jre-alpine
COPY --from=build /src/incubator-dubbo-ops/dubbo-admin/target/dubbo-admin-0.0.1-SNAPSHOT.jar .
RUN mv dubbo-admin-0.0.1-SNAPSHOT.jar dubbo-admin.jar
