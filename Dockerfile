FROM debian:stretch

RUN apt-get update
RUN apt-get install -y apt-transport-https
RUN apt install git gcc g++ make net-tools python-dev libxml2-dev libxslt1-dev zlib1g-dev gettext curl
