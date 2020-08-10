#!/bin/bash
pathDatasetKitti='/mnt/6e1ef38e-db2f-4eda-ad11-31252df3b87b/data/Datasets/DNS' #Example, it is necesary to change it by the dataset path

#Usage: ./stereo_inertial_ocams path_to_vocabulary path_to_settings path_to_sequence_folder_1 path_to_times_file_1 (path_to_image_folder_2 path_to_times_file_2 ... path_to_image_folder_N path_to_times_file_N) 

# echo "Launching OcamS Easy static_1m"
# ./Examples/Stereo-Inertial/stereo_inertial_ocams Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/OCamS.yaml "$pathDatasetKitti"/easy/static_1m "$pathDatasetKitti"/easy/static_1m/timestamps.txt ocams_easy_static_1m

# echo "Launching OcamS Hard ocams_4m"
# ./Examples/Stereo-Inertial/stereo_inertial_ocams Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/OCamS.yaml "$pathDatasetKitti"/hard/ocams_4m "$pathDatasetKitti"/hard/ocams_4m/timestamps.txt ocams_hard_ocams_4m


echo "Launching OcamS Medium moving_3m"
./Examples/Stereo-Inertial/stereo_inertial_ocams Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/OCamS.yaml "$pathDatasetKitti"/medium/moving_3m "$pathDatasetKitti"/medium/moving_3m/timestamps.txt ocams_medium_moving_3m