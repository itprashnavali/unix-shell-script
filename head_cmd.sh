# Write a shell script to simulate head command of unix. Try to incorporate as many options as possible.


clear
tname=`tty`
if [ $# -eq 1 ]
then
        n=10
        fname=$1
elif [ $# -eq 2 ]
then
        fname=$2
        if [ `expr su	bstr $1 1 1` != '-' ]
        then
                echo "invaid argument"
                exit
        fi
        i=2
        n=0
        len=`expr length $1`
        while [ $i -le $len ]
        do
                res=`expr substr $1 $i 1`
                n=`expr $n \* 10 + $res`
                i=`expr $i + 1`
        done
else
        echo "invalid argument"
        break
fi
exec < $fname
i=0
while read line
do
        echo $line
        i=`expr $i + 1`
        if [ $i -eq $n ]
        then
                break
        fi
done
exec < $tname

