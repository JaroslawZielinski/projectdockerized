# projectdockerized
PHP Composer project using mysql dockerized

# how to use shell commands
```ssh
cd YourProject
composer config repositories.projectdockerized vcs https://github.com/JaroslawZielinski/projectdockerized.git
composer require jaroslawzielinski/projectdockerized dev-master
sh vendor/jaroslawzielinski/projectdockerized/setup.sh
cp .env.dist .env
run/dockerized
```
and finally
```ssh
run/dockerized all
```
