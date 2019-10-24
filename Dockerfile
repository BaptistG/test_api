FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

COPY . /opt/source_code
RUN pip3 install -r /opt/source_code/requirements.txt

ENV FLASK_APP /opt/source_code/app.py
EXPOSE 5000
CMD flask run --host=0.0.0.0
