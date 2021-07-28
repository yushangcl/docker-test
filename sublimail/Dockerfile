FROM  python:3.6
MAINTAINER huahui.wu <gayhub@live.cn>

RUN apt-get update
RUN apt-get -y install git
    RUN git clone https://github.com/toxinu/sublimall-server.git
RUN cd sublimall-server
RUN virtualenv virtenv
RUN source virtenv/bin/activate
RUN pip install -r requirements.txt

CMD [ "python", "manage.py migrate" ]
CMD [ "python", "manage.py createsuperuser" ]
CMD [ "python", "manage.py runserver" ]