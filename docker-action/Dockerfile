# FROM debian:9.5-slim
FROM ubuntu:latest

RUN echo $ACC_KEY

RUN apt update
RUN apt install -y git
RUN apt install -y curl
# RUN apt install -y hub
RUN apt install gh -y

ENV NVM_VERSION v0.33.8
ENV NODE_VERSION v12.20.1
ENV NPM_VERSION 6.11.3
ENV YARN_VERSION 1.22.0
ENV NVM_DIR /home/app/.nvm
ENV PATH $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default \
    && npm install -g npm@$NPM_VERSION yarn@$YARN_VERSION

RUN echo ahoy from Dockerfile

ADD script.sh /script.sh
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
