echo "enter limit: "
read n
a=0

b=1

sum=0
echo " fibonacci numbers upto $n:" 
while [ $a -le $n ]; do

        echo "$a "
        sum=$(( sum + a ))
        temp=$a
        a=$b
        b=$((temp + b))
done
