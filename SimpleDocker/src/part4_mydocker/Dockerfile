FROM nginx
WORKDIR /home/
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./server.c /home/server.c
COPY ./run.sh /home/run.sh
RUN apt-get update
RUN apt-get install -y gcc spawn-fcgi libfcgi-dev
ENTRYPOINT ["sh", "./run.sh"]