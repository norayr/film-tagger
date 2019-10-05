#lst=`ls ../*.jpg`
dir='/home/nil3/www/norayr.am/htdocs/sona/by_camera/lomo_instant_magellan/2019/08-24/'
lst=`ls $dir/*.jpg`
echo $lst

for i in $lst
do
  sh main.sh $i
done

