# docker-apue

## Build Dockerfile

```
docker build . -t apue:beta
```

## How to use

```
docker run --rm -it -v ~/Code/apue:/apue apue:beta bash
gcc xx.c -static -lapue
./a.out
```
