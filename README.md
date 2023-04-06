# projectdockerized
PHP Composer project using mysql dockerized

# how to use shell commands
in [packagist](https://packagist.org/packages/jaroslawzielinski/projectdockerized)
```ssh
cd YourProject
composer require jaroslawzielinski/projectdockerized
sh vendor/jaroslawzielinski/projectdockerized/setup.sh
cp .env.dist .env
run/dockerized
```
and finally
```ssh
run/dockerized all
```
