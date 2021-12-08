FROM centos:latest
COPY . /webapp
WORKDIR /webapp
RUN yum install -y python3-pip
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["run.py"]
