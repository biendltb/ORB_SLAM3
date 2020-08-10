pathDatasetEuroc='/mnt/6e1ef38e-db2f-4eda-ad11-31252df3b87b/data/Datasets/EuRoC'

# echo "Launching OcamS Easy static_1m"
# ./Examples/Stereo-Inertial/stereo_inertial_ocams Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/OCamS.yaml "$pathDatasetKitti"/easy/static_1m "$pathDatasetKitti"/easy/static_1m/timestamps.txt ocams_easy_static_1m

# echo "Launching OcamS Hard ocams_4m"
# ./Examples/Stereo-Inertial/stereo_inertial_ocams Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/OCamS.yaml "$pathDatasetKitti"/hard/ocams_4m "$pathDatasetKitti"/hard/ocams_4m/timestamps.txt ocams_hard_ocams_4m


echo "Launching EuRoC V101"
./Examples/Stereo/stereo_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/EuRoC.yaml "$pathDatasetEuroc"/vicon_room1/V1_01_easy ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V101.txt dataset-V101_stereoi