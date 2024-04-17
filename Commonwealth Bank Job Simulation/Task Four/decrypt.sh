MyString='(2cf4;j='
i=0
base=0
echo "Converting to ascii value"
while (( i++ < ${#MyString} ))
do
char = $(expr substr "$MyString" $i 1)
for j in `printf "%d" \'$char` ; do
j=$((j+base) )
printf \\$(printf'%030' $j)
base=$((base-1))
done;
done;