FROM quay.io/spivegin/tlmbasedebian
WORKDIR /opt/
RUN apt-get update && apt-get install -y curl git &&\
    apt-get autoclean && apt-get autoremove &&\
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
RUN ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa && git config --global user.name "quadtone" && git config --global user.email "quadtone@txtsme.com" && ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts
