## Environment
- Python version: 3.9.6
- Package manager: pip & requirements.txt

## How to use

### Set `src/requirements.txt` file
src/requirements.txtに
```
Django>=3.2.6
```
と記述する。（各環境毎にrequirements.txtファイルがある場合は別django/Dockerfileファイルを必要がある）

### Clone application repository
```
$ cd app/
$ git clone xxxxx .
```

### Build image
```
docker-compose build
```

### Container up
-dオプションはデーモンで起動させます
```
docker-compose up -d
```

### Create project
Projectがない場合、以下を実行しProjectを作成する
コンテナ作成前に実行する必要があります
```
docker-compose run web django-admin.py startproject pg-name .
```

### Create application
Applicationを追加する
```
docker exec -it django-app python manage.py startapp app-name
```

### Login container
```
docker exec -it django-app bash
```
