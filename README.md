# shell
Productivity hacks

## Run as docker container
```
docker run -it -v <host-dir>:/home/user/workspace alepeh/shell sh -l
```
As we are not entering a login shell, we need to add sh -l.
You might need to run the container as a user that exists on the host, by adding e.g. --user 1026

## TODOTXT
The config assumes that your todo, done, report files are located in ~/workspace/todo
