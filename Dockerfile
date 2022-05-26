FROM ubuntu
RUN apt update  && apt install apt-transport-https
RUN apt install python3 python3-pip
RUN pip3 install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
