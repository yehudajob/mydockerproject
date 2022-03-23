FROM alpine:latest
WORKDIR /home/docker_project
VOLUME /my_volume
RUN apk update
RUN apk add git
RUN apk add python3
COPY . /home/docker_project


