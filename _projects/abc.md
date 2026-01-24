---
layout: page
title: 🎵 AI Background Music Composer
description: End-to-end AI system that generates custom background music tailored to video content
img: assets/img/abg.gif
importance: 1
category: AI
related_publications: false
---
> ABC is an end-to-end multi-modal AI system that analyzes video content and generates tailored background music. Upload a video, and our system will understand the scenes, objects, and emotions to create the perfect musical accompaniment.

## 🔗 Project Links

<div style="margin-top: 30px; border: 1px solid #ddd; border-radius: 4px; overflow: hidden;">
  <div style="display: flex; gap: 15px; margin: 15px 0;">
    <a href="https://github.com/Ayingxizhao/AI-Background-Music-Composer" style="display: inline-flex; align-items: center; padding: 8px 12px; background-color: #0366d6; color: white; text-decoration: none; border-radius: 4px; font-weight: 500;" target="_blank">
      <i class="fab fa-github"></i> View Source Code
    </a>
    <a href="https://youtu.be/URD2uU_u73k" style="display: inline-flex; align-items: center; padding: 8px 12px; background-color: #ff0000; color: white; text-decoration: none; border-radius: 4px; font-weight: 500;" target="_blank">
      <i class="fab fa-youtube"></i> Watch Demo
    </a>
  </div>
</div>

<div style="margin-top: 20px; position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
  <iframe src="https://www.youtube.com/embed/URD2uU_u73k?autoplay=1&mute=1" 
          style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: none;" 
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
          allowfullscreen>
  </iframe>
</div>

---
## Motivation
Short-form platforms like TikTok, YouTube Shorts, and Instagram Reels have made background music a core part of storytelling. The right soundtrack enhances mood, pacing, and emotional impact.
<img src="/assets/img/social.webp" alt="social media platforms" style="width: 100%; height: auto; max-width: 100%;">

Yet creators still struggle with:
- Repetitive, overused music libraries
- Strict licensing rules and the fear of copyright strikes
- Difficulty standing out when everyone uses the same trending audio
- Hours wasted searching for a track that "kind of" fits

Instead of focusing on editing or storytelling, many creators end up stuck browsing playlists — slowing down the creative process in an already saturated landscape.

## Solution
Our AI Background Music Composer creates custom soundtracks based on:

- The video you upload
- Your musical preferences (style, instruments, BPM)

### How it works

**Video Understanding**  
A fine-tuned VLM analyzes visual cues — motion, color dynamics, scene transitions — to capture the rhythm and emotion of the footage.

**Preference Blending**  
Users choose their desired vibe: lofi chill, cinematic orchestral, groovy electronic, etc.

**Music Generation**  
A neural audio model composes original melodies and rhythms, aligning beats with visual transitions for a seamless feel.

## The experience
Upload -> adjust a few sliders -> preview your soundtrack.
A handcrafted vibe, delivered by AI in under two minutes.

## Technical Approach
_A multi-model pipeline designed for scalability, precision, and real-time usability._
1. **Video → Description (Qwen3–2B VLM)**
   - Fine-tuned on the MIRADATA YouTube dataset
   - Outputs compact semantic descriptions of the video

2. **Description + Preferences → Prompt (music_gen_prompter LLM)**
   - Structures user preferences + VLM output
   - Produces an optimized prompt for music generation

3. **Prompt → Music (Lyria 2)**
   - Generates the final BGM track tailored to video pacing and mood

## Infrastructure
To ensure performance and reliability:

- Docker for containerization
- Kubernetes for scalable orchestration
- Docker Compose to keep services isolated and fault-tolerant
- GitHub Actions for CI/CD
- DVC for dataset versioning & automated retraining
- REST APIs bridging models and front end
- AWS deployment powering cloud-based generation
- The final product is a responsive, lightweight web app that delivers music anywhere.


## Impact
Our system doesn’t just help creators — it can reshape workflows across the entire video ecosystem.

### For Platforms
#### Benefits
* Integrates directly into editing software, mobile apps, or short-video platforms
* Enables real-time, adaptive soundtrack generation inside the creator’s workflow
* Replaces static libraries with endless AI-generated alternatives
* Creates richer, more diverse audio ecosystems

### For Creators
#### Benefits
* Removes financial and technical barriers to professional-quality music
* Eliminates copyright uncertainty
* Expands creative flexibility through personalized soundtracks

By making music adapt to video — rather than forcing creators to adapt to limited libraries — we move toward a future where audio is as dynamic and expressive as the visuals it supports.