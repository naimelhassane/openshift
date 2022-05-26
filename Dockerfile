FROM ubuntu:20.04
RUN apt -y update
RUN install -y python3 python3-venv


#COPY app.py /opt/

#ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
