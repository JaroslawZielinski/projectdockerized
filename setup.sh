#!/bin/sh

mkdir -p dockers/mysql
mkdir -p dockers/php
mkdir -p run

if [ ! -f "dockers/mysql/Dockerfile" ];
then
  echo "\"dockers/mysql/Dockerfile\" copied."
  cp vendor/jaroslawzielinski/project-dockerized/dockers/mysql/Dockerfile dockers/mysql
fi

if [ ! -f "dockers/mysql/mysqld.cnf" ];
then
  echo "\"dockers/mysql/mysqld.cnf\" copied."
  cp vendor/jaroslawzielinski/project-dockerized/dockers/mysql/mysqld.cnf dockers/mysql
fi

if [ ! -f "dockers/php/Dockerfile" ];
then
  echo "\"dockers/php/Dockerfile\" copied."
  cp vendor/jaroslawzielinski/project-dockerized/dockers/php/Dockerfile dockers/php
fi

if [ ! -f "dockers/php/php.ini" ];
then
  echo "\"dockers/php/php.ini\" copied."
  cp vendor/jaroslawzielinski/project-dockerized/dockers/php/php.ini dockers/php
fi

if [ ! -f "run/dockerized" ];
then
  echo "\"run/dockerized\" copied."
  cp vendor/jaroslawzielinski/project-dockerized/run/dockerized run

  echo "\"run/dockerized\" is now executable."
  chmod +x run/dockerized
fi

if [ ! -f ".env" ];
then
  echo "\"dockers/mysql/Dockerfile\" copied."
  cp vendor/jaroslawzielinski/project-dockerized/.env .
fi

if [ ! -f "docker-compose.yml" ];
then
  echo "\"dockers/mysql/Dockerfile\" copied."
  cp vendor/jaroslawzielinski/project-dockerized/docker-compose.yml .
fi
