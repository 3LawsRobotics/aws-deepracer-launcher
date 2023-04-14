#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Cloning the async_web_server_cpp package"
cd $SCRIPT_DIR
git clone https://github.com/GT-RAIL/async_web_server_cpp.git
cd async_web_server_cpp
git checkout ros2
apt-get install -y python3-websocket
echo ""
echo "Cloning the web_video_server package"
cd $SCRIPT_DIR
git clone https://github.com/RobotWebTools/web_video_server.git
cd web_video_server
git fetch origin pull/111/head:ros2
git checkout ros2
echo ""
echo "Cloning the rplidar_ros package from 3laws fork"
cd $SCRIPT_DIR
git clone https://github.com/3LawsRobotics/rplidar_ros.git -b ros2
