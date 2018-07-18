FROM alpine:latest

MAINTAINER gayhub@live.cn

ENV l 0.0.0.0:8888

ENV r http://idea.lanyus.com:80

RUN wget --no-check-certificate -O ReverseProxy_linux_amd64 https://github.com/ilanyu/ReverseProxy/releases/download/v1.4/ReverseProxy_darwin_amd64

COPY ReverseProxy_linux_amd64 /usr/bin/ReverseProxy_linux_amd64

RUN chmod a+x /usr/bin/ReverseProxy_linux_amd64

EXPOSE 8888

CMD ["sh", "-c", "/usr/bin/ReverseProxy_linux_amd64 -l $l -r $r"]