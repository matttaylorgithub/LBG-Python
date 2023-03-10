FROM python:3
MAINTAINER Matt T

#update the image
RUN apt-get update && apt-get clean

#install wget for maven
#RUN apt-get install -y wget

WORKDIR /LBG-Python

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
ENV PORT 8081
EXPOSE ${PORT}
CMD [ "python", "./lbg.py","--PORT","8081" ]
