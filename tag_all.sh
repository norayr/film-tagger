lst=`ls ../*.jpg`

for i in $lst
do
  sh main.sh $i
done

