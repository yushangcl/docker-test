FROM logr/oracle-jre8

MAINTAINER huahui.wu gayhub@live.cn

# 下载license
WORKDIR /root

RUN wget https://c.jun6.net/ZFILE/zfile-release.war \
    && mkdir zfile && unzip zfile-release.war -d zfile && rm -rf zfile-release.war \
    && chmod +x ~/zfile/bin/*.sh

EXPOSE 8080

CMD sh ./zfile/bin/start.sh && tail -f /dev/null

ENTRYPOINT java -Xms10m -Xmx300m -Djava.security.egd=file:/dev/./urandom -jar zfile.jar
