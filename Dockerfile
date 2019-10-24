FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y pip3

COPY . /opt/source_code
RUN pip3 install -r /opt/source_code/requirements.txt

ENTRYPOINT export FLASK_APP=/opt/source_code/app.py flask run
