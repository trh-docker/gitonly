FROM quay.io/spivegin/tlmbasedebian
WORKDIR /opt/
RUN apt-get update && apt-get install -y curl git &&\
    apt-get autoclean && apt-get autoremove &&\
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
