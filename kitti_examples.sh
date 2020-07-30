#!/bin/bash
pathDatasetKitti='/mnt/6e1ef38e-db2f-4eda-ad11-31252df3b87b/data/Datasets/KITTI/raw_data/' #Example, it is necesary to change it by the dataset path

echo "Launching KITTI 0001 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_kitti Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/KITTI_26_09.yaml "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0001_extract/image_00/data "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0001_extract/image_01/data "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0001_extract/image_00/timestamps.txt "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0001_extract/oxts/ kitti_0001

echo "Launching KITTI 0005 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_kitti Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/KITTI_26_09.yaml "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0005_extract/image_00/data "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0005_extract/image_01/data "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0005_extract/image_00/timestamps.txt "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0005_extract/oxts/ kitti_0005

echo "Launching KITTI 0009 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_kitti Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/KITTI_26_09.yaml "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0009_extract/image_00/data "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0009_extract/image_01/data "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0009_extract/image_00/timestamps.txt "$pathDatasetKitti"/2011_09_26/2011_09_26_drive_0009_extract/oxts/ kitti_0009