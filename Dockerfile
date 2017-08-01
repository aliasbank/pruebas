FROM  fedora
MAINTAINER Francisco Santander
ENV http_proxy http://user:pass@proxy/
ENV https_proxy https://user:pass@proxy/
RUN dnf update
RUN dnf intall nano -y
