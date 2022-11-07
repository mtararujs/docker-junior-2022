FROM ubuntu:latest
LABEL AUTHOR="Martins"

RUN apt update && apt upgrade
RUN apt install curl -y
