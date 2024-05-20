## To run this:

1- Install ros2 (ros2-foxy was used during this project)
2- Remove the log, install and build folders and rebuild everything by running in the terminal (outside the src folder, in this folder: cd ~/DRL_robot_navigation_ros2/ ):
`colcon build --symlink-install` 
3- Add the sourcing of setup.bash (in the install folder) to the bashrc:
`gedit ~/.bashrc`
then add this line at the end (note that your path might differ):
`source ~/DRL_robot_navigation_ros2/install/setup.bash`
4- Run the simulation of the trained robot with the creation of the map (might need to install dependencies like the `slamtoolbox` before building (in step 2)):
ros2 launch td3 testmap_simulation.launch.py

## Notes:

- This project was inspired from a paper published in ros1, then partly converted in ros2. We took the ros2 source files, and modified them with the addition of the creation of the map while the robot is exploring the room using the TD3 algorithm. 
- One of the main problems encountered during the training of the robot was that the boxes were not moving after each iteration so our robot was not trained correctly, so we used their trained robot. This problem may be due to the updates in the gazebo environment from ros1 to ros2 since this project was converted from ros1. Also, the training sometimes led to an average Q value decreasing, this means the robot was not learning correctly, to solve this we needed to re-train it which takes around 8h-10h so due to time limitations we decided to use their pre-trained robot (also because even though we once obtained a good training with Q increasing at the end, it was still not converging since it needed more time)
- As for future work: we suggest to try to solve the problems encountered during training and re-train the robot, create a global navigation strategy by generating the goal points in a way that will allow the robot to go to places that he has not mapped before (to finish exploring the room faster), try to do the same training on a turtlebot instead and test it on a real turtlebot in the Gipsalab)
- The `cartographer` package in this folder was not used since the map was created using `slamtoolbox` instead

## Student Guide:

As a guide, these are the main tutorials that were followed to understand the concepts:
1- Follow these tutorials to install and understand the basics of ros2, if needed:
https://www.google.com/search?sca_esv=0a002056b542477b&sca_upv=1&sxsrf=ADLYWIKSL2xY6qZwPV87FgjB01QDB20ysQ:1715801835301&q=ros2+humble+tutorial&tbm=vid&source=lnms&prmd=vinbmtz&sa=X&ved=2ahUKEwirppf3s5CGAxWtSKQEHbDYCiEQ0pQJegQIDhAB&biw=1536&bih=826&dpr=1.25#fpstate=ive&vld=cid:28eac6c0,vid:Gg25GfA456o,st:0
2- This tutorial was used at first to navigate the robot in the map using Nav2:
https://www.youtube.com/watch?v=idQb2pB-h2Q
3- This playlist was used to understand reinforcement learning (Q-learning and DQL):
https://www.youtube.com/playlist?list=PLZbbT5o_s2xoWNVdDudn51XM8lOuZ_Njv
4- These two videos were helpful to understand DDPG and TD3 algorithms:
https://www.youtube.com/watch?v=_pbd6TCjmaw&list=PLe5mY-Da-ksWV330WbfazLUyOuR59sers&index=9
https://www.youtube.com/watch?v=0D6a0a1HTtc

## Important Sources:

- This video contains the source of the files in this project (without the mapping), from here, the ros2 project was created from the original ros1 project, it also explains how to run the training of the robot:
https://www.youtube.com/watch?v=KEObIB7RbH0
- This is the github repository of the author of the original project in ros1, explaining TD3 algorithm and many steps of the project. Note that it is an older version of their project in ros1 since they didn't explain the waypoints (global navigation strategy) they added in their published paper (the published paper can be found in the drive folder with the name: Goal-Driven_Autonomous_Exploration_Through_Deep_Reinforcement_Learning):
https://github.com/reiniscimurs/DRL-robot-navigation





