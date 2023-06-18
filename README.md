# docker_task
Задание по основам Docker в рамках курса "Инженер данных" от 1Т

## Список команд для выполнения задания с описанием

### Задание 1

1. Сборка образа на основе Dockerfile-а:
```sh
docker build -t test_image_pg:latest .
```

2. Создание контейнера на основе собранного образа:
```sh
docker run -d -p 5432:5432 --name test_container_pg test_image_pg:latest
```

### Задание 2

1. Для подключения к созданной БД в контейнере (test_db) из командной строки под указанным в Dockerfile-е пользователем (username) нужно воспользоваться следующей командой. В самом контейнере при этом запускаем утилиту psql и с помощью неё работаем с БД:
```sh
docker exec -it test_container_pg psql -U username testdb
```

2. Далее можно использовать синтаксис SQL для внесения данных, например:
```sh
INSERT INTO index_mass VALUES (4, 100, 200);
```

### Задание 3

1. Для сохранения данных внесённых в контейнер на постоянной основе, добавлен параметр VOLUME в Dockerfile. Для создания контейнера с использованием тома нужно ввести команду ниже:
```sh
docker run -d -p 5432:5432 --name test_container_pg -v /data_pg:/var/lib/postgresql/data test_image_pg:latest
```