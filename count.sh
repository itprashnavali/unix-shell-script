# Write a shell script that accept any numbers from command line and count odd,even,positive and negative numbers from them

odd=0
even=0
nega=0
posi=0
for i in $*
do
        res=$(($i%2))
        if [ $res -eq 0 ]
        then
                even=`expr $even + 1`
        fi
        if [ $res -ne 0 ]
        then
                odd=`expr $odd + 1`
        fi
        if [ $i -le 0 ]
        then
                nega=`expr $nega + 1`
        fi
        if [ $i -gt 0 ]
        then
                posi=`expr $posi + 1`
        fi
done
echo -e "Even number = $even"
echo -e "Odd number = $odd"
echo -e "Negative number = $nega"
echo -e "Positive number = $posi"
