# project-dockerized
PHP Composer project using mysql dockerized

# how to use shell commands
```ssh
cd YourProject
composer config repositories.repo-name vcs https://github.com/JaroslawZielinski/project-dockerized.git
composer require jaroslawzielinski/project-dockerized dev-master
chmod +x vendor/jaroslawzielinski/project-dockerized/setup.sh
sh vendor/jaroslawzielinski/project-dockerized/setup.sh
run/dockerized
```
and finally
```ssh
run/dockerized all
```
