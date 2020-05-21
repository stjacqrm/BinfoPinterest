# PyCharm Community

### To download from the command line: 

```
$ sudo snap install pycharm-community --classic
```

### To download from website:
(after clicking the download button)

```
$ cd Downloads
$ mv pycharm-community-2020.1.1.tar.gz /good/directory/for/ide
$ tar -xzf pycharm-2020.1.1.tar.gz
```

### Set to run easily

Set in .bashrc 

```
$ nano .bashrc
```

```
export PATH="/good/directory/for/ide/pycharm-community-2020.1.1/bin/:$PATH"
```

click Ctrl X, Y, then Enter

To run:

```
$ pycharm.sh 
```
