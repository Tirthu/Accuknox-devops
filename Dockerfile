FROM ubuntu:latest

RUN apt update && apt install fortune-mod cowsay netcat-openbsd -y
ENV PATH="/usr/games:${PATH}"
WORKDIR /app
COPY wisecow.sh .
RUN chmod 777 wisecow.sh
EXPOSE 4499
CMD ["./wisecow.sh"]

