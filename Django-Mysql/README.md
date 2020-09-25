Docker Django MySQL Demo
========================

A very simplistic demo of composing MySQL and Django containers.


    $ git clone https://github.com/kiranpayyavuala/Docker.git
    $ cd Docker/Django-Mysql
    $ docker-compose up -d db
    $ docker-compose exec db mysql -u root -p -e 'CREATE DATABASE `ddm` DEFAULT CHARACTER SET = `utf8mb4`'
    $ docker-compose up -d app
    $ docker-compose exec app python app.py createsuperuser


Browse to [EC2_IP:9000]
