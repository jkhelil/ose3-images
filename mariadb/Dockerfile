FROM fedora:latest
MAINTAINER jawed khelil <jkhelil@gmail.com>

RUN dnf install mariadb-server pwgen psmisc net-tools hostname gettext bind-utils procps -y

ADD scripts /scripts
RUN chown -R mysql /scripts
RUN chmod 755 /scripts/*



VOLUME ["/var/lib/mysql"]

EXPOSE 3306

USER mysql 

CMD ["/bin/bash", "/scripts/start.sh"]

