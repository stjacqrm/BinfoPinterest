# Title Describing Tool
A description of the tool. 


## Prerequisites
Here is where you would describe the necessary dependencies and where/how to get them.

1. Install [`Nextflow`](https://www.nextflow.io/docs/latest/getstarted.html#installation) (`>=21.10.3`)

2. Install Python3.7+ and BioPython

May need to use update-alternatives to set correct version of python, ie:

```
$ sudo update-alternatives --install /usr/bin/python3 python3 /home/${USER}/miniconda3/bin/python3.8 4
```

BioPython:

```
$ python3 -m pip install biopython
```

3. Install Bash Needs (may need to install individually)

```
$ sudo apt-get update && sudo apt-get install -y \
    build-essential \
    libssl-dev \
    uuid-dev \
    libgpgme11-dev \
    squashfs-tools \
    libseccomp-dev \
    pkg-config
```

```
$ sudo apt-get install libtool-bin
```

## How to run
### 1) Instructions on how to run the tools:
1. Download the data
2. Move the tar file into the desired directory
3. Use the following command to invoke the pipeline:

```
$ example.FILE -argument1
```

### 2) Instructions on how to run the tools another way:
1. Use the following command to invoke the pipeline:

```
$ example.FILE  -r path/to/directory -o desired/output/name
```

## Results
All results can be found in the directory /output.

## Authors

Rachael St. Jacques ([`stjacqrm`](https://github.com/stjacqrm)) wrote this README.md template. 