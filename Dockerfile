version: '3.8'
services:
  web:
    image: php:8.1-apache
    volumes:
      - .:/var/www/html
    ports:
      - "8080:80"
  db:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: tienda
      MYSQL_USER: usuario
      MYSQL_PASSWORD: clave
    ports:
      - "3306:3306"
  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    ports:
      - "8081:80"
    environment:
      PMA_HOST: db
