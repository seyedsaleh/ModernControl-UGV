 <div id="top"></div>


<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<i> In The Name Of God </i> 
<br />
<div align="center">

  <h3 align="center">ModernControl-UGV</h3>

  <p align="center">
    System Kinematics and Dynamics Model and Controller Design of an Autonomous Vehicle
    <br />
    <a href="https://github.com/seyedsaleh/ModernControl-UGV"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/seyedsaleh/ModernControl-UGV">View Demo</a>
    ·
    <a href="https://github.com/seyedsaleh/ModernControl-UGV/issues">Report Bug</a>
    ·
    <a href="https://github.com/seyedsaleh/ModernControl-UGV/issues">Request Feature</a>
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
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#dataset">Dataset</a></li>
    <li><a href="#refereces">Refereces</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

There are many great README templates available on GitHub; however, I didn't find one that really suited my needs so I created this enhanced one. I want to create a README template so amazing that it'll be the last one you ever need -- I think this is it.

Here's why:
* Your time should be focused on creating something amazing. A project that solves a problem and helps others
* You shouldn't be doing the same tasks over and over like creating a README from scratch
* You should implement DRY principles to the rest of your life :smile:

Of course, no one template will serve all projects since your needs may be different. So I'll be adding more in the near future. You may also suggest changes by forking this repo and creating a pull request or opening an issue. Thanks to all the people have contributed to expanding this template!

Use the `BLANK_README.md` to get started.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

This section should list any major frameworks/libraries used to bootstrap your project. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.

* [Python 3.8](https://www.python.org/)
* [Tensorflow , Keras](https://www.tensorflow.org/)
* [Midi2audio](https://github.com/bzamecnik/midi2audio)
* [Music21](https://web.mit.edu/music21/)
* [Numpy](https://numpy.org/)

<p align="right">(<a href="#top">back to top</a>)</p>





<!-- 

**Course: Control Modern | Supervisor: Dr. Iman Sharifi** -->


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







<!-- REFERENCES -->
## Refereces

[1] *Mogren, Olof. (2016). C-RNN-GAN: Continuous recurrent neural networks with adversarial training. [arXiv:1611.09904](https://arxiv.org/abs/1611.09904).* 


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Seyedmohammadsaleh Mirzatabatabaei - [@seyedsaleh](https://github.com/seyedsaleh) - seyedsaleh.edu@gmail.com

Salman Amimotlagh - [@SMotlaq](https://github.com/SMotlaq) - pilot.motlaq@gmail.com

Shima Naseri - [@shimanaseri](https://github.com/shimanaseri) - Shima's Email
Amin Lari
Tara Radjabi

Project Link: [https://github.com/seyedsaleh/ModernControl-UGV](https://github.com/seyedsaleh/ModernControl-UGV)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Malven's Flexbox Cheatsheet](https://flexbox.malven.co/)
* [Malven's Grid Cheatsheet](https://grid.malven.co/)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)
* [Font Awesome](https://fontawesome.com)
* [React Icons](https://react-icons.github.io/react-icons/search)

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
[license-shield]: https://img.shields.io/github/license/seyedsaleh/ModernControl-UGV.svg?style=for-the-badge
[license-url]: https://github.com/seyedsaleh/ModernControl-UGV/blob/master/LICENSE.txt
[product-screenshot]: https://user-images.githubusercontent.com/55730628/140566491-4e9c8b46-d6b5-4d54-8ff0-d58420be90c1.png
