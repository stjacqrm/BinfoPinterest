# Working with git
Versioning control is important, but working with git and GitHub can be intimidating. 

## Getting code from your forked repository
git clone is your friend. 

```
$ git clone https://github.com/stjacqrm/random_scripts.git
```

cd into that directory to see that all the needed files are there

```
$ cd random_scripts
$ ls
```

## Seeing whats "origin" and what's "upstream"
"Origin" should be your fork of the repository. To check:

```
$ git remote -v
```
There should only be this output:

```
$ origin  https://github.com/stjacqrm/random_scripts.git (fetch)
$ origin  https://github.com/stjacqrm/random_scripts.git (push)
```

To make pull requests to the main repository, we need to add "upstream"

```
$ git remote add upstream https://github.com/upstream/random_scripts.git
```

Make sure you got it right, it's weird to fix later:

```
git remote -v
```

output:

```
$ origin  https://github.com/stjacqrm/random_scripts.git (fetch)
$ origin  https://github.com/stjacqrm/random_scripts.git (push)
$ upstream  https://github.com/upstream/random_scripts.git (fetch)
$ upstream  https://github.com/upstream/random_scripts.git (push)
```

## Branch-ing out

See what branch you're working on:

```
$ git branch
```

Checkout an existing branch:

```
$ git checkout branch_name
```

Make a new branch and check it out:

```
$ git checkout -b branch_name
```

Delete a branch locally:

```
$ git branch -d branch_name
```

Delete a branch on your GitHub repository:

```
$ git push origin --delete branch_name
```

Check to see if you've added changes in your code to the current branch:

```
$ git status
```

Add changes you've made to your branch (also called staging a commit)

```
$ git add .
```

Delete changes that haven't been staged yet:

```
$ git checkout -- .
```

Delete changes you've added to your branch, but haven't pushed:

```
$ git rm --cached <file-name>
```

Sync origin master branch with upstream master branch (but keeping your local changes):
```
$ git fetch upstream
$ git checkout master
$ git merge upstream/master
```

Sync origin master branch with upstream master branch (discarding your changes):
```
$ git fetch upstream
$ git reset --hard upstream/master
$ git clean -f -d
```

Sync origin master branch on your GitHub repo
```
$ git push origin master
```

Fetch and download content from a repo and update local (a combo of ```git fetch``` and ``` git merge```:
```
$ git pull
```
## Afriad of commit-ment?
Don't worry, everyone is a little bit. 

Before you can make a commit, you have to add your changes (covered above). 

Make a commit:

```
$ git commit -m "add file.txt"
```

  * make the message as descriptive as you can without being too verbose

Push your changes (and possible new branch) to your (origin) repo

```
$ git push origin new_branch
```

## Company merge-rs

Merge one branch into another branch:

```
$ git checkout master
$ git merge new_branch
```

Push what you've just merged into your master branch:
```
$ git push origin master
```
