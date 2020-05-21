# DOCKER CE

## Obtaining Docker

```
$ sudo apt-get update
$ sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

### Verify your key:

```
$ sudo apt-key fingerprint 0EBFCD88
```

### You should get something like this:

```
$ pub   4096R/0EBFCD88 2017-02-22
$      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
$ uid   Docker Release (CE deb) <docker@docker.com>
$ sub   4096R/F273FCD8 2017-02-22)
```

### keep going with the install:

```
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$ sudo apt-get update
$ sudo apt-get install docker-ce
```

### Test the install:

```
$ sudo docker run hello-world
```

## Setting Docker groups

```
$ sudo groupadd docker
$ sudo gpasswd -a $USER docker
$ newgrp docker
```
