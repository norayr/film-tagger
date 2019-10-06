#lst=`ls ../*.jpg`
#dir='/home/nil3/www/norayr.am/htdocs/sona/by_camera/lomo_instant_wide/2019/06-02/'
#dir=`pwd -L`
set -x
cd ..
DIRECTORY=`pwd`
cd -
lst=`ls $DIRECTORY/*.jpg`
echo $lst

for i in $lst
do
  sh main.sh $i
done

