# FROM debian:9.5-slim
FROM ubuntu:latest

RUN apt update
RUN apt install -y git

RUN echo ahoy from Dockerfile

# ADD script.sh /script.sh
# RUN chmod +x /script.sh
# ENTRYPOINT ["/script.sh"]

RUN git clone https://github.com/bh247484/actions-repo-2
RUN cd actions-repo-2 && ls
# RUN cat README.md