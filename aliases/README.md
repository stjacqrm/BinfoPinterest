# Aliases
Here's several aliases that I've found to be useful. I've gotten some of them from [StaPH-B](https://github.com/StaPH-B)
and others from [Stephen Tuner](https://github.com/stephenturner/oneliners).

## write aliases to .bashrc
Go to your home directory and type
  
```
$ nano .bashrc
```

Scroll all the way down and write:

```
alias refresh="source ~/.bashrc"
alias mf="mv -i"
alias mroe="more"
alias c='clear'
alias clera="clear"
alias hgrep='history | grep'

# as suggested by Mendel Cooper in "Advanced Bash Scripting Guide"
extract () {
   if [ -f $1 ] ; then
       case $1 in
        *.tar.bz2)      tar xvjf $1 ;;
        *.tar.gz)       tar xvzf $1 ;;
        *.tar.xz)       tar Jxvf $1 ;;
        *.bz2)          bunzip2 $1 ;;
        *.rar)          unrar x $1 ;;
        *.gz)           gunzip $1 ;;
        *.tar)          tar xvf $1 ;;
        *.tbz2)         tar xvjf $1 ;;
        *.tgz)          tar xvzf $1 ;;
        *.zip)          unzip $1 ;;
        *.Z)            uncompress $1 ;;
        *.7z)           7z x $1 ;;
        *)              echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}
```
