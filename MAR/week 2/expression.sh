echo "enter a"
read a
echo "enter b"
read b
echo "enter c"
read c
echo "enter d"
read d
val=`expr $a \* 20 - $b \* 2 + $c / $d`
echo "value after evaluating expression is $val"


