// Write an awk program to calculate frequency of each character in file

echo "Enter the filename : "
read filename
awk '
	{ len=length($0)
		for(i=1;i<=len;i++)
		{
			ch=substr($0,i,1)
			cnt[ch] += 1
		}
	}
END {
	print "\n Count start"
	for(i in cnt)
		print i,cnt[i]
}' $filename
