FROM ubuntu:16.04
RUN apt update
RUN apt install python python-pip
RUN pip3 install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
