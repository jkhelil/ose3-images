.PHONY: all
all: build test


build:
	@docker build --rm -t emircs/mariadb .

test:
	@docker create --name=mariadb-data -v /var/lib/mysql \
    --entrypoint /bin/echo emircs/mariadb "MariaDB data volume"
	@docker run --name=mariadb -e USER=wordpress -e PASS=$(pwgen -s -1) -e NAME=wordpress --volumes-from=mariadb-data -p 3306:3306 -d emircs/mariadb

clean:
	-@docker stop mariadb-data mariadb
	-@docker rm mariadb-data mariadb

.DEFAULT:
	@echo Unknown target