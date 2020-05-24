# change default python on mac to be python3.6+

First, check your version of python

```
$ python -v
```

If you don't have python3.6+, install:

```
$ brew install python
```

Look where its installed:

```
$ ls -l /usr/local/bin/python*
```

Output should be similar to this:

```
$ lrwxr-xr-x  1 irfan  admin  34 Nov 11 16:32 /usr/local/bin/python3 -> ../Cellar/python/3.7.5/bin/python3
$ lrwxr-xr-x  1 irfan  admin  41 Nov 11 16:32 /usr/local/bin/python3-config -> ../Cellar/python/3.7.5/bin/python3-config
$ lrwxr-xr-x  1 irfan  admin  36 Nov 11 16:32 /usr/local/bin/python3.7 -> ../Cellar/python/3.7.5/bin/python3.7
$ lrwxr-xr-x  1 irfan  admin  43 Nov 11 16:32 /usr/local/bin/python3.7-config -> ../Cellar/python/3.7.5/bin/python3.7-config
$ lrwxr-xr-x  1 irfan  admin  37 Nov 11 16:32 /usr/local/bin/python3.7m -> ../Cellar/python/3.7.5/bin/python3.7m
$ lrwxr-xr-x  1 irfan  admin  44 Nov 11 16:32 /usr/local/bin/python3.7m-config -> ../Cellar/python/3.7.5/bin/python3.7m-config
```

Change python simlink to what you want above:
```
$ ln -s -f /usr/local/bin/python3.7 /usr/local/bin/python
```

Test to see if this worked:
In a new terminal:

```
$ python --version
```

Output should be:

```
$ Python 3.7.3
```
