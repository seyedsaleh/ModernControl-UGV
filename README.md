 <div id="top"></div>


<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <i align="center"> In The Name Of God </i>

  <h3 align="center">ModernControl-UGV</h3>

  <p align="center">
    Modeling, Planning and Nonlinear Control Techniques For Autonomous Vehicles 🎛️🚘
    <br />
    <b> System Kinematics and Dynamics Model and Controller Design </b>
    <br />
    <a href="https://github.com/seyedsaleh/ModernControl-UGV"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/seyedsaleh/ModernControl-UGV/issues">Report Bug & Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#parts">Parts</a></li>
    <li><a href="#results">Results</a></li>
    <li><a href="#refereces">Refereces</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<p> <img src="https://user-images.githubusercontent.com/47852354/141318398-34b3417e-73f6-4230-96f6-200614180e47.PNG" width="1000"> </p> 
Today, one of the most challenging topics in the world is the issue of self-driving cars. Companies are investing heavily in the development of this technology and have extensive research on the subject, including Tesla and Google.
A self-driving car has several parts; Initially, it must receive feedback from the environment with its sensors (such as ultrasonic proximity sensors, camera for image processing, GPS satellite communication module, and speed and acceleration sensors).
Then, with data integration methods, this information reaches the controller whose main task is to apply the desired input to the system operators to receive the desired output (such as throttle, brake, gear adjustment and steering angle).


<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

Major softwares/libraries used to this project:

* [MATLAB 2020a](https://www.mathworks.com/products/matlab.html)
  * Control System Toolbox
* [Simulink v10](https://www.mathworks.com/products/simulink.html)

<p align="right">(<a href="#top">back to top</a>)</p>





<!-- PARTS -->
## Parts


**MODELING OF A MOBILE ROBOT**

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


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- RESULTS -->
## Results

<p align="right">(<a href="#top">back to top</a>)</p>




<!-- REFERENCES -->
## Refereces
[1] *Eugenio Alcalá Baselga, “MODELLING, PLANNING AND NONLINEAR CONTROL TECHNIQUES FOR AUTONOMOUS VEHICLES, ” June 2016.*

[2] *Laguerre based model predictive control for trajectory tracking of nonholonomic mobile robots-Proceedings of the 6th RSI-International Conference on Robotics and Mechatronics (IcRoM 2018)*

[3] *Control of Wheeled Mobile Robots: An Experimental Overview Alessandro De Luca, Giuseppe Oriolo, Marilena Vendittelli- Dipartimento di Informatica e Sistemistica, Universit`a degli Studi di Roma “La Sapienza”, Italy*

[4] *STABILIZATION CONTROL OF THE DIFFERENTIAL MOBILE ROBOT USING LYAPUNOV FUNCTION AND EXTENDED KALMAN FILTER -Thuan Hoang Tran, Manh Duong Phung, Thi Thanh Van Nguyen , Quang Vinh Tran University of Engineering and Technology, VNU, Hanoi City, Vietnam*

[5] *Nonlinear control of nonholonomic mobile robot formation-Travis Alan Dierks*

[6] *M.H. Shafiei & F. Monfared (2019) Design of a robust tracking controller for a nonholonomic mobile robot with side slipping based on Lyapunov Redesign and nonlinear H∞ methods, Systems Science & Control Engineering, 7:1, 1-11, DOI:10.1080/21642583.2018.1555061*

[7] *2015 IEEE Intelligent Vehicles Symposium (IV) June 28 - July 1, 2015. COEX, Seoul, Korea- Kinematic and Dynamic Vehicle Models for Autonomous Driving Control Design Jason Kong, Mark Pfeiffer, Georg Schildbach, Francesco Borrelli*
<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Seyedmohammadsaleh Mirzatabatabaei - [@seyedsaleh](https://github.com/seyedsaleh) - seyedsaleh.edu@gmail.com

Salman Amimotlagh - [@SMotlaq](https://github.com/SMotlaq) - pilot.motlaq@gmail.com

Shima Naseri - [@shimanaseri](https://github.com/shimanaseri) - shima.s.naseri@gmail.com

Amin Lari - Tara Radjabi

Project Link: [https://github.com/seyedsaleh/ModernControl-UGV](https://github.com/seyedsaleh/ModernControl-UGV)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [x] Project has been done.

See the [open issues](https://github.com/seyedsaleh/ModernControl-UGV/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>


---
<div align="center">
<p>
 <img src="https://user-images.githubusercontent.com/47852354/138564509-b5dffb4e-f48b-4db5-b8a4-1385ef2b22c8.png" width="110">
 <img src="https://user-images.githubusercontent.com/47852354/138607395-e18bfc7a-204c-495a-914f-bd5cf8436ca4.jpg" width="70">
</p>
</div>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/seyedsaleh/ModernControl-UGV.svg?style=for-the-badge
[contributors-url]: https://github.com/seyedsaleh/ModernControl-UGV/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/seyedsaleh/ModernControl-UGV.svg?style=for-the-badge
[forks-url]: https://github.com/seyedsaleh/ModernControl-UGV/network/members
[stars-shield]: https://img.shields.io/github/stars/seyedsaleh/ModernControl-UGV.svg?style=for-the-badge
[stars-url]: https://github.com/seyedsaleh/ModernControl-UGV/stargazers
[issues-shield]: https://img.shields.io/github/issues/seyedsaleh/ModernControl-UGV.svg?style=for-the-badge
[issues-url]: https://github.com/seyedsaleh/ModernControl-UGV/issues
