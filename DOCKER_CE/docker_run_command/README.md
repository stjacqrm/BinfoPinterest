# Running docker
I always forget the whole command for running docker. 

## Running Docker with mounted volume

```
$ docker run --rm=True -u $(id -u):$(id -g) -v $PWD:/data dockerRepo/image:tag command_for_tool
```
## Other options
Set to bash with the [docker_run()](https://github.com/stjacqrm/installations/blob/master/aliases/README.md) alias trick.
