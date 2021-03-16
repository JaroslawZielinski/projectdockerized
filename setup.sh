#!/bin/sh

mkdir -p dockers/mysql
mkdir -p dockers/php
mkdir -p run

if [ ! -f "dockers/mysql/Dockerfile" ];
then
  echo "\"dockers/mysql/Dockerfile\" copied."
  cp vendor/jaroslawzielinski/projectdockerized/dockers/mysql/Dockerfile dockers/mysql
else
  echo "\"dockers/mysql/Dockerfile\" already exists."
fi

if [ ! -f "dockers/mysql/mysqld.cnf" ];
then
  echo "\"dockers/mysql/mysqld.cnf\" copied."
  cp vendor/jaroslawzielinski/projectdockerized/dockers/mysql/mysqld.cnf dockers/mysql
else
  echo "\"dockers/mysql/mysqld.cnf\" already exists."
fi

if [ ! -f "dockers/php/Dockerfile" ];
then
  echo "\"dockers/php/Dockerfile\" copied."
  cp vendor/jaroslawzielinski/projectdockerized/dockers/php/Dockerfile dockers/php
else
  echo "\"dockers/php/Dockerfile\" already exists."
fi

if [ ! -f "dockers/php/php.ini" ];
then
  echo "\"dockers/php/php.ini\" copied."
  cp vendor/jaroslawzielinski/projectdockerized/dockers/php/php.ini dockers/php
else
  echo "\"dockers/php/php.ini\" already exists."
fi

if [ ! -f "run/dockerized" ];
then
  echo "\"run/dockerized\" copied."
  cp vendor/jaroslawzielinski/projectdockerized/run/dockerized run

  echo "\"run/dockerized\" is now executable."
  chmod +x run/dockerized
else
  echo "\"run/dockerized\" already exists."
fi

if [ ! -f ".env.dist" ];
then
  echo "\".env.dist\" copied."
  cp vendor/jaroslawzielinski/projectdockerized/.env.dist .
else
  echo "\".env.dist\" already exists."
fi

if [ ! -f "docker-compose.yml" ];
then
  echo "\"docker-compose.yml\" copied."
  cp vendor/jaroslawzielinski/projectdockerized/docker-compose.yml .
else
  echo "\"docker-compose.yml\" already exists."
fi
