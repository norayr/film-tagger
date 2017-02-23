
   function read()
   {
     model=$( exiftool -f -s3 -"Model" "${i}" )
     make=$( exiftool -f -s3 -"Make" "${i}" )
     datetime=$( exiftool -f -s3 -"DateTimeOriginal" "${i}" )

      # If the datetime value is empty (returned '-' because of the '-f' option)
      # then read another tag
      if [ "${datetime}" = '-' ]; then
        datetime=$( exiftool -f -s3 -"MediaCreateDate" "${i}" )
      fi
   }

   #exiftool -a -u -g1 file.jpg # read everything
   #exiftool -s -u -G Scan-161022-0001.jpg # gives category and tag names to use when rewriting
   # exiftool -EXIF:Software="aaa" Scan-161022-0001.jpg # writes to file

   function writeExifMake()
   {
     #usage:
     # writeMake fileName Mamiya ZM
     list=""

     for i in $@
     do
       if [[ "$i" == "$1" ]]
	     then
         fileName=$i
	     #elif [[ "$i" == "$2" ]]
	     #then
       #  delay=$i
	     else
         if [[ "$list" == "" ]]
         then
           list=${i}
         else
           list="${list} ${i}"
         fi
	     fi
     done
     exiftool -EXIF:Make="${list}" $fileName 
   }

   function writeExifModel()
   {
     #usage:
     # writeExifModel fileName Mamiya ZM
     list=""

     for i in $@
     do
       if [[ "$i" == "$1" ]]
	     then
         fileName=$i
	     #elif [[ "$i" == "$2" ]]
	     #then
       #  delay=$i
	     else
         if [[ "$list" == "" ]]
         then
           list=${i}
         else
           list="${list} ${i}"
         fi
	     fi
     done
     exiftool -EXIF:Model="${list}" $fileName 
   }



#test
writeMake test.jpg "Mamiya ZM"
exiftool -s -u -G test.jpg | grep EXIF | grep Make
