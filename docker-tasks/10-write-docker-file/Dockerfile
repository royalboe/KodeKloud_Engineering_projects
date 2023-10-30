FROM ubuntu

RUN apt upgrade -y && apt update -y

RUN apt install apache2 -y

RUN sed -i "s/80/8085/g" /etc/apache2/ports.conf

EXPOSE 8085

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND","-k","start"]

