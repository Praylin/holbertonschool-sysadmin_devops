#!/bin/bash
message=$1
voice=$2
address=$3
filename=$(echo $message | awk '{print $1}' )
case $voice in
    m)
    say -v Ralph -o $filename.m4a $message
    ;;
    f)
    say -v Alice -o $filename.m4a $message 
    ;;
    x)
    say -v Zarvox -o $filename.m4a $message
    ;;
esac

scp $filename.m4a admin@$address:/var/www/html
echo "listen message here" $address/$filename.m4a
