FROM python:3.7

ADD requirements.txt /
RUN pip install -r /requirements.txt -i https://mirrors.aliyun.com/pypi/simple/


ADD . /whole_control
WORKDIR /whole_control
COPY whole_control.py /whole_control

EXPOSE 9000
CMD [ "python" , "whole_control.py"]~
