FROM ubuntu
RUN apt update && apt upgrade -y
RUN install -y python3
RUN install build-essential python3-pip libffi-dev python3-dev python3-setuptools libssl-dev -y
RUN apt update
RUN apt install python3-venv -y
RUN cd /opt/ && python3 -m venv venv && source venv/bin/activate
RUN pip3 install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
