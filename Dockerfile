FROM ubuntu:18.04

#install all the tools you might want to use in your container
RUN apt-get update
#the following ARG turns off the questions normally asked for location and timezone for Apache
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y

#change working directory to root of apache webhost
#WORKDIR var/www/html

#copy your files, if you want to copy all use COPY . .
COPY . /var/www/html

EXPOSE 80

#now start the server
CMD ["apachectl", "-D", "FOREGROUND"]
