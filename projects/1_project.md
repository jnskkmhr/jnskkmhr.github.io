<!-- ---
layout: page
title: OmniLRS: A Photorealistic Simulator for Lunar Robotics
description: Robotics simulator targetted for planetary exploration
img: assets/img/project_preview/omnilrs_2.png
importance: 1
category: work
related_publications: true
---

Developing algorithms for extra-terrestrial robotic exploration has always been challenging. 
Along with the com- plexity associated with these environments, one of the main issues remains the evaluation of said algorithms. 
With the regained interest in lunar exploration, there is also a demand for quality simulators that will enable the development of lunar robots. 
In this paper, we propose Omniverse Lunar Robotic- Sim (OmniLRS) that is a photorealistic Lunar simulator based on Nvidia’s robotic simulator. 
This simulation provides fast procedural environment generation, multi-robot capabilities, along with synthetic data pipeline for machine-learning appli- cations. 
It comes with ROS1 and ROS2 bindings to control not only the robots, but also the environments. 
This work also performs sim-to-real rock instance segmentation to show the effectiveness of our simulator for image-based perception. 
Trained on our synthetic data, a yolov8 model achieves per- formance close to a model trained on real-world data, with 5% performance gap. 
When finetuned with real data, the model achieves 14% higher average precision than the model trained on real-world data, demonstrating our simulator’s photorealism. 
The code is fully open-source, accessible here: https://github.com/OmniLRS/OmniLRS, and comes with demonstrations.

|  <div style="width:70px">Name</div>  |  <div style="width:230px">Description</div>  | Images            |
|------------|-------------|---------------------------------|
| **Lunalab**            |  <div style="width:230px"> Digital-Twin of lunar analog at the University of Luxembourg. This environment also supports terrain deformation as the rover drives on it. </div> | <img src="https://raw.githubusercontent.com/wiki/OmniLRS/OmniLRS/media/env_img/lunalab.png" width=520/> |
| **Lunaryard**            |  <div style="width:230px">A small scale procedually generated lunar environment. If lunar coordinates and a date is provided the position of the earth and sun are computed using ephemerides resulting in realistic lighting. This feature is also available in the large scale environments. This environment also support terrain deformation as the rover drives on it.</div>  | <img src="https://raw.githubusercontent.com/wiki/OmniLRS/OmniLRS/media/env_img/lunaryard_husky_ex1.png" width=520/> |
| **LargeScale**           |  <div style="width:230px">Semi procedural lunar environment. It uses real DEM to reconstuct the coarse terrain, usually 5meters per pixel and then uses procedural generation to augment it to 2.5cm per pixel. The terrain itself can be generated at a even higher resolution to smooth out shadows. This very fine terrain allows to reconstruct fine terrain features increasing the engineering value of the sim. The whole of this is bundled inside Geometry clip maps, allowing to render very large scenes.</div> | <img src="https://raw.githubusercontent.com/wiki/OmniLRS/OmniLRS/media/env_img/large_scale.png" width=520/>

First release:

[![First Release Demo Youtube Video](https://img.youtube.com/vi/PebUZjm0WuA/0.jpg)](https://www.youtube.com/watch?v=PebUZjm0WuA)

Wheel traces:

[![Wheel Traces Demo Youtube Video](https://img.youtube.com/vi/TpzD0h-5hv4/0.jpg)](https://www.youtube.com/watch?v=TpzD0h-5hv4)

Large Scale update:

[![Large Scale Update Demo Youtube Video](https://img.youtube.com/vi/3m78fO5uXwA/0.jpg)](https://www.youtube.com/watch?v=3m78fO5uXwA)

<!-- Every project has a beautiful feature showcase page.
It's easy to include images in a flexible 3-column grid format.
Make your photos 1/3, 2/3, or full width.

To give your project a background in the portfolio page, just add the img tag to the front matter like so:

    ---
    layout: page
    title: project
    description: a project with a background image
    img: /assets/img/12.jpg
    ---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/1.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Caption photos easily. On the left, a road goes through a tunnel. Middle, leaves artistically fall in a hipster photoshoot. Right, in another hipster photoshoot, a lumberjack grasps a handful of pine needles.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    This image can also have a caption. It's like magic.
</div>

You can also put regular text between your rows of images, even citations {% cite einstein1950meaning %}.
Say you wanted to write a bit about your project before you posted the rest of the images.
You describe how you toiled, sweated, _bled_ for your project, and then... you reveal its glory in the next row of images.

<div class="row justify-content-sm-center">
    <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    You can also have artistically styled 2/3 + 1/3 images, like these.
</div>

The code is simple.
Just wrap your images with `<div class="col-sm">` and place them inside `<div class="row">` (read more about the <a href="https://getbootstrap.com/docs/4.4/layout/grid/">Bootstrap Grid</a> system).
To make images responsive, add `img-fluid` class to each; for rounded corners and shadows use `rounded` and `z-depth-1` classes.
Here's the code for the last row of images above:

{% raw %}

```html
<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm-4 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
```

{% endraw %} --> -->
