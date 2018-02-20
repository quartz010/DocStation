#!/bin/bash
finish=1
echo "building... wait a while"
# gitbook build ./ docs > build.log 
sleep 2  && finish=1 & 

b=''

for ((i=0;$finish!=1;i+=2))
	do
        	printf "progress:[%-50s]%d%%\r" $b $i
	        sleep 0.1
        	b=#$b
	done
echo
echo "build Completed! Gitting..."

git add .
git commit -m "modified in `date +%Y-%m-%d`"


