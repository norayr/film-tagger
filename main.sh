 set -x
 # imports
 source camera/mamiya_zm.sh
 #source camera/mamiya_ze-2.sh
 #source lens/AUTO_REVUENON_MCF_50mm_F1.4.sh
 source lens/mamiya-sekor_28mm_f3.5.sh
 #source film/fujicolor_c200.sh
 source film/FUJICHROME_Velvia_50.sh
 source flash/default.sh
 source scanner/minolta_scan_dual_iv.sh
 source picture/default.sh
 #source location/default.sh
 source location/frozen_sevan_velvia.sh
 source location/malocco_cascade.sh

  fileName=$1

  exiftool -overwrite_original -EXIF:Make="${cameraMaker}" $fileName
  exiftool -overwrite_original -EXIF:Model="${cameraModel}" $fileName
  exiftool -overwrite_original -EXIF:Orientation="${orientation}" $fileName
  exiftool -overwrite_original -EXIF:Artist="${artist}" $fileName
  exiftool -overwrite_original -EXIF:OwnerName="${artist}" $fileName
  exiftool -overwrite_original -XMP:Creator="${artist}" $fileName
  exiftool -overwrite_original -EXIF:Copyright="${copyright}" $fileName
  exiftool -overwrite_original -XMP:Rights="${copyright}" $fileName
  exiftool -overwrite_original -EXIF:ExposureTime="${exposureTime}" $fileName
  exiftool -overwrite_original -EXIF:ShutterSpeedValue="${exposureTime}" $fileName
  exiftool -overwrite_original -Composite:ShutterSpeed="${exposureTime}" $fileName
  exiftool -overwrite_original -EXIF:FNumber="${fNumber}" $fileName
  exiftool -overwrite_original -EXIF:ApertureValue="${fNumber}" $fileName
  exiftool -overwrite_original -Composite:Aperture="${fNumber}" $fileName
  exiftool -overwrite_original -EXIF:ExposureProgram="${exposureProgram}" $fileName
  exiftool -overwrite_original -EXIF:ExposureMode="${exposureProgram}" $fileName
  exiftool -overwrite_original -EXIF:ISO="${iso}" $fileName
  exiftool -overwrite_original -EXIF:FocalLengthIn35mmFormat="${focalLengthIn35mmFormat}" $fileName
  exiftool -overwrite_original -Composite:FocalLength35efl="${focalLengthIn35mmFormat}" $fileName
  exiftool -overwrite_original -EXIF:MaxApertureValue="${maxApertureValue}" $fileName
  exiftool -overwrite_original -EXIF:Software="${software}" $fileName

  exiftool -overwrite_original -XMP:SerialNumber="${cameraSerialNumber}" $fileName
  exiftool -overwrite_original -XMP:CameraSerialNumber="${cameraSerialNumber}" $fileName
  exiftool -overwrite_original -XMP:Lens="${lens}" $fileName
  exiftool -overwrite_original -EXIF:LensInfo="${lens}" $fileName
  exiftool -overwrite_original -XMP:LensManufacturer="${lensManufacturer}" $fileName
  exiftool -overwrite_original -EXIF:LensModel="${lensModel}" $fileName
  exiftool -overwrite_original -XMP:LensModel="${lensModel}" $fileName
  exiftool -overwrite_original -EXIF:LensSerialNumber="${lensSerial}" $fileName
  exiftool -overwrite_original -XMP:LensSerial="${lensSerial}" $fileName
 
  exiftool -overwrite_original -XMP:FlashManufacturer="${flashManufacturer}" $fileName
  exiftool -overwrite_original -XMP:FlashModel="${flashModel}" $fileName
  exiftool -overwrite_original -XMP:FilmType="${filmType}" $fileName
  exiftool -overwrite_original -XMP:FilmMaker="${filmMaker}" $fileName
  exiftool -overwrite_original -XMP:Film="${film}" $fileName
  exiftool -overwrite_original -XMP:FilmAlias="${filmAlias}" $fileName
  exiftool -overwrite_original -XMP:DevelopProcess="${developProcess}" $fileName
  exiftool -overwrite_original -XMP:RollId="${rollId}" $fileName
  exiftool -overwrite_original -XMP:ScannerMaker="${scannerMaker}" $fileName
  exiftool -overwrite_original -XMP:LensSerial="${lensSerial}" $fileName

  #location
  exiftool -P -GPSLatitude=${latitude} -GPSLongitude=${longitude} -GPSImgDirection=${direction} $fileName

  #exiftool -overwrite_original -xmpRights:UsageTerms="This work is licensed to the public under the Creative Commons Attribution-ShareAlike license http://creativecommons.org/licenses/by­sa/2.0/"
