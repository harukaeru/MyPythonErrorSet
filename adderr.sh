#!/usr/bin/env zsh
mypython='/Users/usrNeko/MyPythonErrorSet'
ls $mypython
echo -n "Which directory? If you create directory, input c"
read ans
time=`date +"%y_%m%d__%H%M%S"`

if [ $ans = 'c' ]; then
	#export ans
	echo -n "Input Directory Name"
	read ans
	printf "\e[35mCreate directory\e[m\n"
	mkdir $mypython/$ans
	echo ' --> Success to create'
fi
echo "now ans $ans"
file_path="$mypython/$ans/$time.py"
if [ -e $file_path ]; then
	echo "Already file exists."
else
	pbpaste > $file_path
	printf "\e[33m$mypython\e[m\n"
	ls $mypython
	printf "\e[33m$mypython/$ans\e[m\n"
	ls $mypython/$ans
fi

cd $mypython
git add .
git commit -m "$time"
git push
