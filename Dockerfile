FROM python

WORKDIR /clock

#这里放置环境变量
#ENV TELETOKEN= TELECHATID=

COPY ./ /clock/
RUN pip3 install -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

CMD python run.py

