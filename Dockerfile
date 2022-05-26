FROM ubuntu:20.04
RUN apt -y update
RUN apt install -y python3 python3-venv python3-pip
RUN mkdir /opt/flask_app
COPY app.py /opt/flask_app
WORKDIR /opt/flask_app
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip3 install Flask



ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
