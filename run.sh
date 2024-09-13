#!/bin/bash

path='~/dataset/MH_01_easy'
traj='MH_01'

# time ./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.bin ./Examples/Stereo-Inertial/EuRoC.yaml "$path" ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt "$traj"

# eval "$(echo "time ./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.bin ./Examples/Monocular/EuRoC.yaml $path ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt $traj")"
eval "$(echo "time ./Examples/RGB-D/rgbd_tum ./Vocabulary/ORBvoc.txt ./Examples/RGB-D/TUM3.yaml ~/dataset/rgbd_dataset_freiburg2_large_with_loop ~/dataset/rgbd_dataset_freiburg2_large_with_loop/associate.txt")"
# eval "$(echo "time ./Examples/RGB-D/rgbd_realsense_D435i Vocabulary/ORBvoc.txt ./Examples/RGB-D/RealSense_D435i.yaml")"
