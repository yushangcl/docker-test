FROM python:2-alpine

MAINTAINER Gayhub <gayhub@live.cn>

RUN wget  --no-check-certificate -O kms "https://raw.githubusercontent.com/yushangcl/shell-install/master/kms/binaries/Linux/intel/glibc/vlmcsd-x64-glibc" -P .
RUN chmod +x kms
CMD nohup kms > kms.log 2>&1 &

EXPOSE 1688

