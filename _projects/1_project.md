---
layout: page
title: Humanoid Locomotion on Granular Media
description: Learning humanoid locomotion on granular media with reinforcement learning. 
img: assets/img/project_1/g1_rl_granular_media.jpg
importance: 1
category: work
related_publications: false
---

This project addresses the significant challenge of bipedal locomotion on granular terrain, which remains hindered by inherent instability and the absence of computationally efficient yet accurate soft terrain models suitable for reinforcement learning (RL) training. To enable successful locomotion, including walking, running, and dynamic motions such as jumping, we have developed a novel soft contact model based on three-dimensional resistive force theory (3D RFT) and leveraged this model to train reinforcement learning policies for humanoid robots.

## 3D RFT for soft contact modeling 
We developed a fast-to-solve soft contact and integrated it into IsaacLab, enabling massive simulation parallelization essential for efficient RL policy training. This integration allows us to simulate thousands of environments simultaneously while maintaining physical accuracy in modeling granular interactions.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/project_1/3d_rft_contact_model.png" title="3D RFT Contact Model" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Proposed soft contact model based on 3D resistive force theory (3D RFT). 
</div>

## Sim2sim evaluation on MPM sand 
To validate the effectiveness of our contact model, we conducted a holistic evaluation using Material Point Method (MPM) sand simulation as a high-fidelity benchmark. Our results demonstrate that reinforcement learning policies trained using the 3D RFT contact model successfully transfer to MPM simulation environments, whereas policies trained with rigid contact models fail to achieve stable locomotion. This finding exhibits the superiority of our approach in capturing the essential physics of granular media interactions.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include video.liquid path="assets/video/project_1/simulation_video_rigid.mp4" title="rigid policy" class="img-fluid rounded z-depth-1" controls=true autoplay=true %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include video.liquid path="assets/video/project_1/simulation_video_rft.mp4" title="soft policy" class="img-fluid rounded z-depth-1" controls=true autoplay=true %}
    </div>
</div>
<div class="caption">
    Performance comparison between rigid terrain policy and soft terrain policy deployed to MPM simulation. 
</div>

## Hardware validation 
In the future, we will conduct extensive hardware experiments on diverse real-world granular media to validate sim-to-real transfer and demonstrate the practical applicability of our approach across various terrains, including sand, gravel, and other deformable surfaces.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include video.liquid path="assets/video/project_1/2026_01_28_rigid.mp4" title="G1 hardware" class="img-fluid rounded z-depth-1" controls=true autoplay=true %}
    </div>
</div>
<div class="caption">
    Preliminary hardware experiment on rigid terrain. Future works involve extensive experiments on granular media.
</div>