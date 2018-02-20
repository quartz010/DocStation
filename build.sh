#!/bin/bash
echo "building... wait a while"
gitbook build ./ docs > build.log &

b=''
for ((i=0;$i<=100;i+=2))
do
        printf "progress:[%-50s]%d%%\r" $b $i
        sleep 0.1
        b=#$b
done
echo
echo "build Completed! Gitting..."

git add .
git commit -m "modified in `date +%Y-%m-%d`"


