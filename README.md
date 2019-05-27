# docker-reminder
## Start postgresql container
```
docker run --name sonar-postgres -p 5432:5432 -v pg-sonar-data:/var/lib/postgresql/data -e POSTGRES_USER=sonar -e POSTGRES_DB=sonar -e POSTGRES_PASSWORD=sonar -d postgres:10
```

## Start sonarqube container
```
docker run -d --name sonarqube -v sonar-data:/opt/sonarqube/data -v sonar-config:/opt/sonarqube/conf -p 9000:9000 -e sonar.jdbc.username=sonar -e sonar.jdbc.password=sonar -e sonar.jdbc.url=jdbc:postgresql://172.17.0.1/sonar sonarqube
```

