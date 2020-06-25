# ToDoApp

# Docker build
`docker build -t USUARIO/IMAGEN .`

# Docker run mysql
`docker run --name mysql -d -p 3306:3306 -e MYSQL_DATABASE=todoapp -e MYSQL_USER=todoapp -e MYSQL_PASSWORD=pass -e  MYSQL_ROOT_PASSWORD=pass  mysql`

# Docker run todoapp
`docker run --name todoapp -d -p 9000:8080 -e DB_USERNAME=todoapp -e DB_PASSWORD=pass -e DB_NAME=todoapp --link mysql -e DB_HOSTNAME=mysql USUARIO/IMAGEN`

Credenciales: in28minutes/dummy
