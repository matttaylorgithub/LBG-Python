#to run: sudo docker run -d  -p 8080 mkct75/LBG_PYTHON

FROM python:3
MAINTAINER Matt T

#update the image
RUN apt-get update && apt-get clean

#install wget for maven
#RUN apt-get install -y wget

#setup maven
#RUN apt-get install -y  maven

#install git
#RUN apt-get install -y git

#install java

#RUN apt install -y  openjdk-8-jdk openjdk-8-jre-headless

#build the project
#RUN git clone https://github.com/matttaylorgithub/LBG-Python.git


WORKDIR /LBG-Python

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080
CMD [ "python", "./lbg.py" ]
