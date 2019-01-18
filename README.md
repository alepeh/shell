# shell
Productivity hacks

## Run as docker container
```
docker run -it -v <host-dir>:/home/user/workspace alepeh/shell sh -l
```
As we are not entering a login shell, we need to add sh -l.

## TODOTXT
The config assumes that your todo, done, report files are located in ~/workspace/todo
