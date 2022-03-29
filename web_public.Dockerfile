FROM amazonlinux:2

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y python3

## preparation
WORKDIR /application
RUN python3 -m venv venv

## Copy base app (web) and install requirements
COPY ./web/public /application
RUN venv/bin/pip3 install -r requirements.txt


## Run app
EXPOSE 80
RUN chmod +x ./gunicorn.sh
ENTRYPOINT ["./gunicorn.sh"]