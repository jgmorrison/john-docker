FROM centos:latest

WORKDIR /usr/src/app

RUN yum install -y wget 

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3

RUN /opt/miniconda3/bin/conda install flask -y

COPY . .

EXPOSE 80

CMD ["/opt/miniconda3/bin/python", "app.py"]
