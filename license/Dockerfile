FROM alpine-glibc

MAINTAINER yushangcl@163.com

# OS环境配置
RUN apt-get update && apt-get -y install wget

#下载jre
RUN wget --no-check-certificate -O jre-8u171-linux-x64.tar.gz http://javadl.oracle.com/webapps/download/AutoDL?BundleId=233162_512cd62ec5174c3487ac17c61aaa89e8

#解压
RUN tar xvcf jre-8u171-linux-x64.tar.gz
#进入目录
RUN cd jre1.8.0_171/
#删除文本文件
RUN rm -rf COPYRIGHT LICENSE README release THIRDPARTYLICENSEREADME-JAVAFX.txtTHIRDPARTYLICENSEREADME.txt Welcome.html
#删除其他无用文件
RUN rm -rf     lib/plugin.jar \
           lib/ext/jfxrt.jar \
           bin/javaws \c
           lib/javaws.jar \
           lib/desktop \
           plugin \
           lib/deploy* \
           lib/*javafx* \
           lib/*jfx* \
           lib/amd64/libdecora_sse.so \
           lib/amd64/libprism_*.so \
           lib/amd64/libfxplugins.so \
           lib/amd64/libglass.so \
           lib/amd64/libgstreamer-lite.so \
           lib/amd64/libjavafx*.so \
           lib/amd64/libjfx*.so

RUN tar zcvf jre8.tar.gz *

# A streamlined jre
ADD jre8.tar.gz /usr/java/jdk/
# set env
ENV JAVA_HOME /usr/java/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin
# run container with base path:/opt
WORKDIR /opt