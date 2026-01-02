---
layout: page
title: AI Background Music Composer
description: End-to-end AI system that generates custom background music tailored to video content
importance: 1
category: AI
related_publications: false
---

## 🎵 AI Background Music Composer

> Automatically generate custom background music for your videos

ABC is an end-to-end multi-modal AI system that analyzes video content and generates tailored background music. Upload a video, and our system will understand the scenes, objects, and emotions to create the perfect musical accompaniment.

## 🔗 Project Links

<div style="margin-top: 30px; border: 1px solid #ddd; border-radius: 4px; overflow: hidden;">
  <div style="display: flex; gap: 15px; margin: 15px 0;">
    <a href="https://github.com/Ayingxizhao/AI-Background-Music-Composer" style="display: inline-flex; align-items: center; padding: 8px 12px; background-color: #0366d6; color: white; text-decoration: none; border-radius: 4px; font-weight: 500;" target="_blank">
      <i class="fab fa-github"></i> View Source Code
    </a>
  </div>
</div>

---

## 🏗️ System Architecture

ABC uses a cloud-native, auto-scaling architecture deployed on Google Kubernetes Engine (GKE):

```
Google Kubernetes Engine (GKE)
├── Namespace: music-gen
│   ├── API Gateway (1-10 pods)
│   ├── Qwen3 Worker (1-20 pods)
│   └── Prompt Gen Workers (1-15 pods)
└── External Services:
    ├── MongoDB Atlas (job queue & metadata)
    ├── Hugging Face Inference Endpoint (Qwen3-VL-2B)
    ├── Vertex AI (Lyria music generation)
    ├── OpenAI (GPT-4o)
    └── Google Cloud Storage
```

### AI/ML Pipeline
1. **Video Analysis** - Qwen3-VL-2B understands scenes, objects, and emotions
2. **Prompt Generation** - GPT-4o transforms analysis into rich music prompts
3. **Music Synthesis** - Vertex AI Lyria generates high-quality background music

---

## � Quick Start

### Prerequisites
- Google Cloud project with billing enabled
- MongoDB Atlas cluster with X.509 authentication
- Hugging Face Inference Endpoint running Qwen3-VL-2B
- OpenAI API key (GPT-4o)
- Vertex AI project with Lyria enabled

### Local Development

```bash
# Clone the repository
git clone https://github.com/Ayingxizhao/AI-Background-Music-Composer.git
cd AI-Background-Music-Composer

# Set up environment variables
cp .env.example .env
# Edit .env with your API keys

# Run backend services
uvicorn src.api_gateway.main:app --reload
uvicorn src.qwen3_worker.main:app --reload
uvicorn src.prompt_gen_worker.main:app --reload

# Run frontend
cd frontend
npm install
npm run dev
```

---

## ✨ Features

### 🎥 Video Processing
- **Upload** - Direct browser upload to Google Cloud Storage
- **Analysis** - Scene, object, and emotion understanding via Qwen3-VL-2B
- **Frame Sampling** - Smart frame sampling for efficient processing

### � Music Generation
- **Custom Creation** - Tailored background music based on video content
- **Multiple Styles** - Support for various moods and genres
- **Regeneration** - Create multiple variations with different settings

### 📊 Real-time Updates
- **WebSocket** - Live job progress updates
- **Status Tracking** - Monitor processing stages
- **Download Options** - Export audio (WAV) or video with music (MP4)

### ⚙️ Technical Features
- **Auto-scaling** - Kubernetes-based horizontal scaling
- **Cost-optimized** - Scales down when idle, no self-managed GPUs
- **Fault-tolerant** - Retry mechanisms and robust error handling
- **CI/CD** - Automated testing and deployment via GitHub Actions

---

## 💻 Technology Stack

### Backend
- **Language/Framework**: Python, FastAPI (async)
- **Services**: API Gateway, Qwen3 Worker, Prompt Gen Worker
- **Database**: MongoDB Atlas (job queue + metadata)
- **Storage**: Google Cloud Storage
- **Orchestration**: Google Kubernetes Engine (GKE)

### Frontend
- **Framework**: React 18 + TypeScript
- **Build**: Vite
- **Styling**: Tailwind CSS + Radix UI
- **Real-time**: WebSocket for job updates
- **Deployment**: Vercel

### AI/ML
- **Vision Model**: Qwen3-VL-2B (Hugging Face Inference)
- **Language Model**: GPT-4o (OpenAI)
- **Music Generation**: Lyria (Vertex AI)

---
