# Trash Collector Robot - 

## Overview  
The Trash Collector Robot is an autonomous robot designed to navigate an environment, detect trash, and collect it using ROS (Robot Operating System) and Gazebo simulation. It utilizes sensors for object detection, path planning, and control mechanisms to pick up and dispose of trash.  

## Features  
- Autonomous navigation using ROS 2 (or ROS 1)  
- Object detection using a camera or LiDAR  
- Path planning with obstacle avoidance  
- Arm or gripper control for trash collection  
- Simulation in Gazebo  

   Installation  
1. Clone the repository:  
   ```bash
   git clone <repository-link>
   cd trash_collector_ws
   ```
2. Install dependencies:  
   ```bash
   rosdep install --from-paths src --ignore-src -r -y
   ```
3. Build the workspace:  
   ```bash
   colcon build  # For ROS 2
   ```
4. Source the setup file:  
   ```bash
   source install/setup.bash  # ROS 2
   ```

## Running the Simulation  
Launch the Gazebo world and the trash collector robot:  
```bash
roslaunch trash_collector simulation.launch
```

## Controls  
- The robot moves autonomously, but you can manually control it using:  
  ```bash
  ros2 topic pub /cmd_vel geometry_msgs/Twist '{linear: {x: 0.5}, angular: {z: 0.0}}'  # ROS 2
  ```
- The gripper/arm can be controlled via a service or action.  

## Future Improvements  
- Improve trash detection using AI-based vision models.  
- Add multi-robot collaboration for large-scale cleanup.  

 Collaborators 
1. Heran Eshetu UGR/5016/14
2. Iman Ibrahim UGR/1004/14
3. Yordanos Melaku UGR/8211/14
