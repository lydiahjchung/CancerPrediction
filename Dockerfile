FROM ubuntu:18.04
FROM python:3

MAINTAINER lydiahjchung "lydiahjchung@gmail.com"

COPY requirements.txt ./

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt install vim -y
RUN pip install -r requirements.txt

EXPOSE 80
CMD ["python", "./Web/run.py"]
