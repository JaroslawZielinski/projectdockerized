#!/bin/sh

mkdir -p dockers
mkdir -p run
cp -r vendor/jaroslawzielinski/project-dockerized/dockers .
cp -r vendor/jaroslawzielinski/project-dockerized/run .
chmod +x run/dockerized
cp vendor/jaroslawzielinski/project-dockerized/.env .
cp vendor/jaroslawzielinski/project-dockerized/docker-compose.yml .
