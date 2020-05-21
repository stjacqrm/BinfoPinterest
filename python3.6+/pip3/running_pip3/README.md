# Running pip3
I've had some trouble recently when trying to run pip3:

```
$ pip3 install dryad
```
will throw a weird error:

```
$ bash: /usr/bin/pip3: /usr/bin/python3: bad interpreter: No such file or directory
```

## Running pip3 so that it actually works:

```
$ python3 -m pip install dryad
```

### Disclaimer
Of course you can use for obtaining any tool you like, I'm just a particular fan of [dryad](https://github.com/k-florek/dryad)
