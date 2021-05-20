# FROM debian:9.5-slim
FROM ubuntu:latest

RUN echo ahoy from Dockerfile

ADD script.sh /script.sh
RUN chmod +x /script.sh
ENTRYPOINT ["/entrypoint.sh"]