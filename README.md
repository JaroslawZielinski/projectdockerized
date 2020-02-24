# projectdockerized
PHP Composer project using mysql dockerized

# how to use shell commands
```ssh
cd YourProject
composer config repositories.repo-name vcs https://github.com/JaroslawZielinski/projectdockerized.git
composer require jaroslawzielinski/projectdockerized dev-master
chmod +x vendor/jaroslawzielinski/projectdockerized/setup.sh
sh vendor/jaroslawzielinski/projectdockerized/setup.sh
run/dockerized
```
and finally
```ssh
run/dockerized all
```
