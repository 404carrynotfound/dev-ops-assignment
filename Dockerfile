FROM ubuntu:latest

WORKDIR /assignment

RUN apt-get update && apt-get install -y python3 python3-pip

COPY src/ ./

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3", "app.py"]
