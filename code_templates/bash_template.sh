#!/bin/bash 

#----------
# Defaults
#----------

quantitative='FALSE'
arg1=''
arg2=''
output_dir='tool_output'
precanned='auto_default'

#-------
# Usage
#-------

display_usage() {
  echo -e "\nUsage: bash_template.sh -a arg1 -b arg2 -o output_dir -c 'precanned' \n"
  echo -e "  -a  A description of the first argument."
  echo -e "      Default: none "
  echo -e "  -b  A description of the second argument."
  echo -e "      Default: none "
  echo -e "  -o  Name of output directory."
  echo -e "      Default: 'tool_output'"
  echo -e "  -c  A description of the precanned option."
  echo -e "      Default: 'clearlabs'"
  echo -e "  -h  Displays this help message\n"
  echo -e "bash_template.sh"
  echo -e "This bash wrapper works best with a description written "
  echo -e "in this section that will be provided when help is requested.\n"
  exit
}


#---------
# Options
#---------

while getopts "a:b:o:c:h" opt; do
  case $opt in
    a) arg1=${OPTARG%/};;
    b) arg2=${OPTARG%/};;
    o) output_dir=${OPTARG%/};;
    c) precanned=${OPTARG%/};;
    h) display_usage;;
   \?) #unrecognized option - show help
      echo -e \\n"Option -$OPTARG not allowed."
      display_usage;;
  esac
done


#--------------------------
# Where the work happens
#--------------------------

mkdir $output_dir && cd $output_dir && mkdir $precanned && cd $precanned

echo "$arg1" > example.text
echo "$arg2" >> example.text

touch "$arg2"



