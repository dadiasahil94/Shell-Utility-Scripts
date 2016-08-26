#script to handle help function
Useage="DESCRIPTION:\n\t A function to compile C++ OpenCV (version 3.0.0) programs\nUSEAGE:\n\t sh compile_cpp_opencv [c++ file name] [output file name]"

while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
 help) echo "$Useage"
		   exit
		   ;;

	esac
done

#check for missiong C++ program name
if [$1 == '']
then
	echo "C++ program name not provided"
	echo "$Useage"
	exit
fi

# Main Script
if [$2 == '']
then
  echo "Generating output file in $PWD"
	echo "Output file name : $PWD/a.out"
	g++ -g $1 -o ./a.out -I/usr/local/include/opencv -I/usr/local/include  -L/usr/local/lib   -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_viz -lopencv_adas -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_cvv -lopencv_datasets -lopencv_face -lopencv_latentsvm -lopencv_objdetect -lopencv_line_descriptor -lopencv_optflow -lopencv_reg -lopencv_rgbd -lopencv_saliency -lopencv_surface_matching -lopencv_text -lopencv_tracking -lopencv_xfeatures2d -lopencv_calib3d -lopencv_features2d -lopencv_shape -lopencv_video -lopencv_ml -lopencv_flann -lopencv_ximgproc -lopencv_xobjdetect -lopencv_xphoto -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_photo -lopencv_imgproc -lopencv_core -lopencv_hal
else
	echo "Output file  : $2"
	g++ -g $1 -o $2 -I/usr/local/include/opencv -I/usr/local/include  -L/usr/local/lib   -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_viz -lopencv_adas -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_cvv -lopencv_datasets -lopencv_face -lopencv_latentsvm -lopencv_objdetect -lopencv_line_descriptor -lopencv_optflow -lopencv_reg -lopencv_rgbd -lopencv_saliency -lopencv_surface_matching -lopencv_text -lopencv_tracking -lopencv_xfeatures2d -lopencv_calib3d -lopencv_features2d -lopencv_shape -lopencv_video -lopencv_ml -lopencv_flann -lopencv_ximgproc -lopencv_xobjdetect -lopencv_xphoto -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_photo -lopencv_imgproc -lopencv_core -lopencv_hal
fi
