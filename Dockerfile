FROM centos:latest
LABEL maintainer="rlehyani@outlook.com"
RUN yum install -y httpd \
  zip \ 
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/univers.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip univers.zip
RUN cp -rvf univers/* .
RUN rm -rf univers univers.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
