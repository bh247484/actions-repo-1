# FROM debian:9.5-slim
FROM ubuntu:latest

RUN apt update
RUN apt install -y git
RUN apt install curl

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - \
    && apt-get install -y nodejs \
    && npm install --global yarn

RUN echo ahoy from Dockerfile

ADD script.sh /script.sh
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]

# RUN git clone https://github.com/bh247484/actions-repo-2
# RUN cd actions-repo-2 && cat README.md
