# Description

template for tubes wbd. set up docker and connecting to php and mariadb.

# Requirements

1. docker, docker desktop would be the easiest way to get started
2. docker-compose

# Installation

## setup Repo

we're going to use github and gitlab informatika as our remote git repository. We use github as a backup, and assuming that it's more reliable that gitlab informatika(and it's recommended by the assitant)

here is how to setup the repo

```powershell
git clone git@github.com:christojeffrey/tubes-wbd-1.git
cd .\tubes-wbd-1\
git remote set-url origin --push --add git@gitlab.informatika.org:if3110-2022-k01-01-26/tugas-besar-1.git
git remote set-url origin --push --add git@github.com:christojeffrey/tubes-wbd-1.git
```

when you run

```powershell
git remote -v
```

you should see something like this

```powershell
origin  git@github.com:christojeffrey/tubes-wbd-1.git (fetch)
origin  git@gitlab.informatika.org:if3110-2022-k01-01-26/tugas-besar-1.git (push)
origin  git@github.com:christojeffrey/tubes-wbd-1.git (push)
```

that means we're going to push to both gitlab and github, and we're going to fetch from github

# How to run

1. go to folder where `docker-compose.yml` is located, run:

   ```powershell
   docker-compose down && docker-compose build && docker-compose up
   ```

2. go to `localhost:8000` on your browser. it should serve whatever that is on `./src/index.php`
3. go to `localhost:7777` on your browser. you should see adminer page. login using the following credentials:

   ```
   server: db
   username: tubes
   password: tubes
   database: tubes
   ```

   you should see the database that we're using for this project. the database is configured by `./sqlfile/initialschema.sql`

# How to stop

press `ctrl + c` to stop the docker compose

# what will you see if all goes well

### sidenote

#### the tutorial in this repo is intended for windows user

#### readings

[project specification](https://docs.google.com/document/d/1bdYy1bAk6tpwYCZfqUxErCIJuESzfYH-n8ijvaNP_Jg/edit)

[docker reference](https://www.section.io/engineering-education/dockerized-php-apache-and-mysql-container-development-environment/)

#### skimped material

1. Difference between CMD and ENTRYPOINT in Dockerfile

### docker note

port format is `host:container`

todo:

1. dump on close, and then load from dump
2. php read data from public folder

```

```
