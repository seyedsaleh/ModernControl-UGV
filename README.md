 
<i> In The Name Of God </i> 

# System Kinematics and Dynamics Model and Controller Design of an Autonomous Vehicle

## Team members: [Mohammadsaleh Tabatabaei](http://github.com/seyedsaleh) - [Salman Amimotlaq](http://github.com/SMotlaq) - [Shima Naseri](https://github.com/shimanaseri) - Amin Lari - Tara Radjabi

**Course: Control Modern | Supervisor: Dr. Iman Sharifi**

<p> <img src="https://user-images.githubusercontent.com/55730628/140566491-4e9c8b46-d6b5-4d54-8ff0-d58420be90c1.png" width="500"> </p> 
 

### MODELLING, PLANNING AND NONLINEAR CONTROL TECHNIQUES FOR AUTONOMOUS VEHICLES

*This project is based on a system from reference article.*

Today, one of the most challenging topics in the world is the issue of self-driving cars. Companies are investing heavily in the development of this technology and have extensive research on the subject, including Tesla and Google.
A self-driving car has several parts; Initially, it must receive feedback from the environment with its sensors (such as ultrasonic proximity sensors, camera for image processing, GPS satellite communication module, and speed and acceleration sensors).
Then, with data integration methods, this information reaches the controller whose main task is to apply the desired input to the system operators to receive the desired output (such as throttle, brake, gear adjustment and steering angle).


### MODELING OF A MOBILE ROBOT
**Dynamic model**
There are many approaches to the dynamic model of the system, some models consider the dynamics of the engine, the dynamics of the braking system and the movement of the roll and the step, and others only represent the dynamics of the vehicle. In this section, the dynamic four-wheel drive model is examined, which considers six degrees of freedom in the car (to consider all possible movements of the car).

<p> <img src="https://user-images.githubusercontent.com/55730628/141247964-53ce2948-1ee8-48d1-9f8c-d30952e2b1f3.png" width="300"> </p> 
To understand the set of equations that describe the system, it is necessary to understand the vehicle's motion on the X-Y plane, which will include the vehicle's roll and step subsystems, propulsion dynamics, brake dynamics, and engine. Finally, using the obtained motion models, the system description matrices can be obtained.
To achieve dynamic equations, we need to achieve a balance of force and torque on each axis. Therefore, the X-axis is defined as the longitudinal axis of the car, the Y-axis as the lateral axis and the Z-axis as perpendicular to the road. This XYZ frame is located in the center of gravity of the car, hereinafter referred to as CoG. For simplicity, the Z axis is not considered in this project.
<p> <img src="https://user-images.githubusercontent.com/55730628/141251113-30c17c75-c8ac-45f5-ae58-74c47c5c5a39.png" width="600"> </p> 
**Kinematic model**
<p> <img src="https://user-images.githubusercontent.com/55730628/141262263-2bed0700-e832-477a-879b-935dd9062c9a.png" width="300"> </p>

One of the major differences between the kinematic model and the dynamic model is the assumption of null skidding assumption and the consideration of small lateral forces. Both assume the idea of low speed, so it can be said that a cinematic model offers acceptable results when the car is moving at low speed. Other differences between the two include that the model does not take into account neither mass nor inertia between the others. In this section, the equations are presented for simplicity based on a two-wheeled kinematic model.
<p> <img src="https://user-images.githubusercontent.com/55730628/141262216-060995ae-86db-42ec-88f8-16f68e49b783.png" width="300"> </p>

Taylor expansion method has been used to linearize both dynamic and kinematic systems.
Due to the high complexity of the dynamic system, the problem controller was generated using the kinematic system and then the dynamic model was used for the final test of the obtained controller.





### titr2

### titr3


### Reference Article
- *Guo, Wanjin & Li, Ruifeng & Cao, Chuqing & Gao, Yunfeng. (2016). Kinematics, dynamics, and control system of a new 5-degree-of-freedom hybrid robot manipulator. Advances in Mechanical Engineering. 8. 10.1177/1687814016680309.* 



---
<div align="center">
<p>
 <img src="https://user-images.githubusercontent.com/47852354/138564509-b5dffb4e-f48b-4db5-b8a4-1385ef2b22c8.png" width="110">
 <img src="https://user-images.githubusercontent.com/47852354/138607395-e18bfc7a-204c-495a-914f-bd5cf8436ca4.jpg" width="70">
</p>
</div>


