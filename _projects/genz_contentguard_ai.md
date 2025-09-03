---
layout: page
title: GENZ ContentGuard AI
description: AI-powered malicious content detection system optimized for Gen Z language patterns and internet slang
img: assets/img/contentguard_ai.png
importance: 1
category: AI
related_publications: false
---

## 🛡️ GENZ ContentGuard AI

**AI-powered malicious content detection system optimized for Gen Z language patterns**

GENZ ContentGuard AI is an advanced machine learning system designed to detect and analyze malicious content, hate speech, harassment, and harmful language patterns commonly used in modern online communication, with special focus on Gen Z language and internet slang.

## 🌟 Key Features

### 🔍 **Advanced Content Analysis**
- **Real-time Detection**: Instant analysis of text content for malicious patterns
- **Multi-Category Classification**: Detects 11+ types of harmful content including:
  - Suicide/Self-harm content
  - Hate speech and discrimination
  - Violence and threats
  - Bullying and harassment
  - Body shaming and appearance-based attacks
  - Mental health shaming
  - Gen Z slang harassment patterns
  - Online harassment tactics
  - Sexual harassment and exploitation
  - Scams and fraud attempts
  - Conspiracy theories and misinformation
  - Trolling and baiting behavior

### **API Endpoints**
- `POST /analyze` - Analyze text content
- `GET /model-info` - Get model information
- `GET /health` - Health check endpoint

## 🎯 Use Cases

- **Social Media Moderation**: Automated content filtering
- **Online Communities**: Community safety and moderation
- **Educational Platforms**: Safe learning environments

## 🔗 Project Links

<div style="margin-top: 30px; border: 1px solid #ddd; border-radius: 4px; overflow: hidden;">
  <div style="display: flex; gap: 15px; margin: 15px 0;">
    <a href="https://github.com/Ayingxizhao/GENZ-ContentGuard-AI" style="display: inline-flex; align-items: center; padding: 8px 12px; background-color: #0366d6; color: white; text-decoration: none; border-radius: 4px; font-weight: 500;" target="_blank">
      <i class="fab fa-github"></i> View Source Code
    </a>
    
    <a href="https://genz-contentguard-ai.onrender.com/" style="display: inline-flex; align-items: center; padding: 8px 12px; background-color: #28a745; color: white; text-decoration: none; border-radius: 4px; font-weight: 500;" target="_blank">
        <i class="fas fa-external-link-alt"></i> Live Demo
    </a>
  </div>
</div>

## 📈 Example API Response

```json
{
  "analysis": "SAFE",
  "confidence": "85.2%",
  "is_malicious": false,
  "detailed_analysis": {
    "risk_level": "LOW",
    "elements_scanned": 2,
    "explanation": "✅ Detected Positive Elements: Positive Support, Health Wellness...",
    "keyword_analysis": {
      "malicious_keywords": {},
      "safe_keywords": {
        "positive_support": ["help", "support"],
        "health_wellness": ["health"]
      }
    }
  }
}

**Made with ❤️ for a safer internet**

*ContentGuard AI - Protecting digital spaces one message at a time*
