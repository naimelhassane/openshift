FROM ubuntu:16.04
RUN apt -y update
RUN apt install -y python python-pip
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
