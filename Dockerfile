FROM debian:stretch

RUN apt-get update
RUN apt-get install -y apt-transport-https
RUN apt install git gcc g++ make net-tools python-dev libxml2-dev libxslt1-dev zlib1g-dev gettext curl

RUN echo ${HOME}
WORKDIR /opt/app-root/src

RUN wget -q --no-check-certificate -O- https://bootstrap.pypa.io/get-pip.py | sudo python
RUN pip install virtualenv
RUN wget -O- https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt install nodejs
RUN npm install -g sass pleeease-cli
