FROM  fedora
MAINTAINER Francisco Santander
#ENV http_proxy http://user:pass@proxy/
#ENV https_proxy https://user:pass@proxy/
#RUN dnf update
RUN yum install memcached -y


#Puerto a Mostrar dede Docker
EXPOSE 11211
# Comando Memcached por defecto con algunos argumentos
CMD ["-u", "root", "-m", "128"]
# Establece el usuario para ejecutar el demonio Memcached
USER daemon

# Establece el punto de entrada para los binarios de Memcached
ENTRYPOINT memcached
