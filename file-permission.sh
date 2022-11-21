clear
echo "ENTER THE FILE TO BE SEARCH"
read f1
ls > temp
grep "$f1" temp>/dev/null
if [ "$?" -eq 0 ]
then
echo "FILE EXIST"
else
echo "FILE DOES NOT EXIST"
fi
if test -r "$f1"
then
echo "READABLE"
fi
if test -w "$f1"
then
echo "WRITEABLE"
fi
if test -x "$f1"
then
echo "EXECUTABLE"
fi
if test -f "$f1"
then
echo "REGULAR FILE"
fi
if test -d "$f1"
then
echo "DIRECTORY"
fi
