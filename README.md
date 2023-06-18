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

