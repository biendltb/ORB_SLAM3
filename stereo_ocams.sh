pathDatasetDNS='/mnt/6e1ef38e-db2f-4eda-ad11-31252df3b87b/data/Datasets/DNS'

# echo "Launching OcamS Easy static_1m"
# ./Examples/Stereo-Inertial/stereo_inertial_ocams Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/OCamS.yaml "$pathDatasetKitti"/easy/static_1m "$pathDatasetKitti"/easy/static_1m/timestamps.txt ocams_easy_static_1m

# echo "Launching OcamS Hard ocams_4m"
# ./Examples/Stereo-Inertial/stereo_inertial_ocams Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/OCamS.yaml "$pathDatasetKitti"/hard/ocams_4m "$pathDatasetKitti"/hard/ocams_4m/timestamps.txt ocams_hard_ocams_4m


echo "Launching OcamS Medium moving_3m"
./Examples/Stereo/stereo_ocams Vocabulary/ORBvoc.txt Examples/Stereo/OCamS.yaml "$pathDatasetDNS"/medium/moving_3m "$pathDatasetDNS"/medium/moving_3m/timestamps.txt ocams_medium_moving_3m