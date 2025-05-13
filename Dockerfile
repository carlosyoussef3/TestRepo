FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y
COPY html /var/www/html
RUN date > /var/www/html/buildtime.txt
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
