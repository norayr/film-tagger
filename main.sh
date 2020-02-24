 set -x
 # imports
 #source camera/mamiya_zm.sh
 #sonas zm:
 source camera/mamiya_zm_.sh
 #source camera/olympus_xa2.sh
 #source camera/porst.sh
 #source camera/mamiya_1000dtl.sh
 #source camera/lomo_instant_magellan.sh
 #source camera/lomo_instant_wide.sh
 #source camera/mamiya_ze-2.sh
 #source camera/nikon_l35_ad.sh
 #source camera/nikon_n2000.sh
 #source camera/nikon_n2000_.sh
 #source camera/mamiya_rb67.sh
 #source camera/polaroid_sx-70.sh
 #source lens/AUTO_REVUENON_MCF_50mm_F1.4.sh
 source lens/AUTO_REVUENON_MCE_28mm_f2.8.sh
 #source lens/mamiya-sekor_28mm_f3.5.sh
 #source lens/osawa_28mm_f2.8.sh
 #source lens/osawa_for_nikon_28mm_f2.8.sh
 #source lens/osawa_for_nikon_28mm_f2.8_.sh
 #source lens/nikon_50mm_f1.8.sh
 #source lens/spiratone_20mm_f2.8.sh
 #source lens/d.zuiko_35mm_f3.5.sh
 #source lens/fuji_EBC_fujinon_SW_28mm_f3.5.sh
 #source lens/Carl_Zeiss_Jena_Flektogon_20mm_f2.8.sh
 #source lens/lomo_instant_magellan.sh
 #source lens/lomo_instant_wide.sh
 #source lens/mamiya_rb67_50mm.sh
 #source lens/polaroid_sx-70.sh
 #source lens/nikon_l35_ad.sh
 #source film/fujicolor_c200.sh
 #source film/fujicolor_pro400h.sh
 #source film/fujichrome_400.sh
 #source film/kodak_portra_400.sh
 #source film/kodak_portra_800.sh
 #source film/kodak_ektar_100.sh
 #source film/kodak_ektar_125.sh
 #source film/kodak_ektar_25.sh
 #source film/fujifilm_superia800.sh
 #source film/instax_mini.sh
 #source film/instax_wide.sh
 #source film/fomapan_400.sh
 #source film/FUJICHROME_Velvia_50.sh
 #source film/FUJIFILM_FP100C.sh
 #source film/polaroid_originals.sh
 #source film/polaroid_originals_monochrome.sh
 source film/fujicolor_100industrial.sh
 #source film/fujicolor_400industrial.sh
 #source film/Lomography_Berlin_400.sh
 #source film/kodak_trix.sh
 #source film/kodak_5222.sh
 #source film/kodak_3200.sh
 #source film/ilford_hp5.sh
 #source film/ilford_delta_400.sh
 #source film/adox_chm400.sh
 source flash/default.sh
 #source scanner/minolta_scan_dual_iv.sh
 #source scanner/canon_9000.sh
 source scanner/pie_xa.sh
 source picture/default.sh
 #source location/default.sh
 #source location/frozen_sevan_velvia.sh
 #source location/malocco_cascade.sh
 #source location/ritsa_street_cat.sh

  fileName=$1

  exiftool -overwrite_original -EXIF:Make="${cameraMaker}" $fileName
  exiftool -overwrite_original -EXIF:Model="${cameraModel}" $fileName
#  exiftool -overwrite_original -EXIF:Orientation="${orientation}" $fileName
#  exiftool -overwrite_original -EXIF:Artist="${artist}" $fileName
#  exiftool -overwrite_original -EXIF:OwnerName="${artist}" $fileName
#  exiftool -overwrite_original -XMP:Creator="${artist}" $fileName
  exiftool -overwrite_original -EXIF:Copyright="${copyright}" $fileName
  exiftool -overwrite_original -XMP:Rights="${copyright}" $fileName
#  exiftool -overwrite_original -EXIF:ExposureTime="${exposureTime}" $fileName
#  exiftool -overwrite_original -EXIF:ShutterSpeedValue="${exposureTime}" $fileName
#  exiftool -overwrite_original -Composite:ShutterSpeed="${exposureTime}" $fileName
#  exiftool -overwrite_original -EXIF:FNumber="${fNumber}" $fileName
#  exiftool -overwrite_original -EXIF:ApertureValue="${fNumber}" $fileName
  exiftool -overwrite_original -Composite:Aperture="${fNumber}" $fileName
#  exiftool -overwrite_original -EXIF:ExposureProgram="${exposureProgram}" $fileName
#  exiftool -overwrite_original -EXIF:ExposureMode="${exposureProgram}" $fileName
  exiftool -overwrite_original -EXIF:ISO="${iso}" $fileName
  exiftool -overwrite_original -EXIF:FocalLengthIn35mmFormat="${focalLengthIn35mmFormat}" $fileName
  exiftool -overwrite_original -Composite:FocalLength35efl="${focalLengthIn35mmFormat}" $fileName
  exiftool -overwrite_original -EXIF:MaxApertureValue="${maxApertureValue}" $fileName
#  exiftool -overwrite_original -EXIF:Software="${software}" $fileName

#  exiftool -overwrite_original -XMP:SerialNumber="${cameraSerialNumber}" $fileName
#  exiftool -overwrite_original -XMP:CameraSerialNumber="${cameraSerialNumber}" $fileName
  exiftool -overwrite_original -XMP:Lens="${lens}" $fileName
  exiftool -overwrite_original -EXIF:LensInfo="${lens}" $fileName
  exiftool -overwrite_original -XMP:LensManufacturer="${lensManufacturer}" $fileName
  exiftool -overwrite_original -EXIF:LensModel="${lensModel}" $fileName
  exiftool -overwrite_original -XMP:LensModel="${lensModel}" $fileName
  exiftool -overwrite_original -EXIF:LensSerialNumber="${lensSerial}" $fileName
  exiftool -overwrite_original -XMP:LensSerial="${lensSerial}" $fileName
 
#  exiftool -overwrite_original -XMP:FlashManufacturer="${flashManufacturer}" $fileName
#  exiftool -overwrite_original -XMP:FlashModel="${flashModel}" $fileName
  exiftool -overwrite_original -XMP:FilmType="${filmType}" $fileName
  exiftool -overwrite_original -XMP:FilmMaker="${filmMaker}" $fileName
  exiftool -overwrite_original -XMP:Film="${film}" $fileName
  exiftool -overwrite_original -XMP:FilmAlias="${filmAlias}" $fileName
  exiftool -overwrite_original -XMP:DevelopProcess="${developProcess}" $fileName
#  exiftool -overwrite_original -XMP:RollId="${rollId}" $fileName
  exiftool -overwrite_original -XMP:ScannerMaker="${scannerMaker}" $fileName

  #location
#  exiftool -overwrite_original -P -GPSLatitude=${latitude} -GPSLongitude=${longitude} -GPSImgDirection=${direction} $fileName

  #exiftool -overwrite_original -xmpRights:UsageTerms="This work is licensed to the public under the Creative Commons Attribution-ShareAlike license http://creativecommons.org/licenses/by­sa/2.0/"
