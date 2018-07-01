FROM logr/oracle-jre8

MAINTAINER huahui.wu gayhub@live.cn

# 下载license
RUN wget -P . "https://github.com/yushangcl/LicenseServer/releases/download/1.0.0/LicenseServer-1.0-jar-with-dependencies.jar"
RUN mv LicenseServer-1.0-jar-with-dependencies.jar license.jar
CMD java -jar license.jar