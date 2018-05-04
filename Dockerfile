FROM centos

MAINTAINER yushangcl@163.com

# OS环境配置
RUN yum install -y wget

#安装JDK
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  -P /var/tmp/jdk http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz
RUN tar xzf /var/tmp/jdk/jdk-8u161-linux-x64.tar.gz -C /var/tmp/jdk && rm -rf /var/tmp/jdk/jdk-8u161-linux-x64.tar.gz

#安装Tomcat
RUN mkdir /var/tmp/tomcat
RUN wget -P  /var/tmp/tomcat http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.8/bin/apache-tomcat-8.5.8.tar.gz
RUN tar xzf /var/tmp/tomcat/apache-tomcat-8.5.8.tar.gz -C /var/tmp/tomcat && rm -rf /var/tmp/tomcat/apache-tomcat-8.5.8.tar.gz


#设置环境变量

#设置Java
ENV JAVA_HOME /var/tmp/jdk/jdk1.8.0_161
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin

#设置Tomcat
ENV CATALINA_HOME /var/tmp/tomcat/apache-tomcat-8.5.8

#开启内部服务端口
EXPOSE 8080

#启动tomcat服务器
CMD ["./var/tmp/tomcat/apache-tomcat-8.5.8/bin/catalina.sh","run"] && tail -f /var/tmp/tomcat/apache-tomcat-8.5.8/logs/catalina.out 
