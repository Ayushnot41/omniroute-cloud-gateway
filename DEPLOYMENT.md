# 🌐 OmniRoute Cloud Deployment Guide (OpenRouter Alternative)

This guide details how to take your self-hosted **OmniRoute Gateway** and deploy it live to the public internet so anyone can access your dashboard and OpenAI-compatible /v1 endpoint.

---

## 📊 Deployment Comparison

| Feature / Platform | ☁️ Render (Recommended) | 🚂 Railway | ⚡ Vercel | 🚇 Cloudflare Tunnel |
| :--- | :---: | :---: | :---: | :---: |
| **Runtime Type** | 24/7 Docker Container | 24/7 Docker Container | Serverless Lambdas | Local Edge Bridge |
| **Persistent SQLite DB** | ✅ Yes (Disk Mount) | ✅ Yes (Volume) | ⚠️ Ephemeral (/tmp) | ✅ Yes (Local Disk) |
| **Token Streaming Timeout** | ♾️ Unlimited | ♾️ Unlimited | ❌ 15s (Hobby) / 60s (Pro) | ♾️ Unlimited |
| **WebSocket Support** | ✅ Full Native | ✅ Full Native | ❌ Not Supported | ✅ Full Native |
| **Setup Complexity** | 🟢 1-Click | 🟢 1-Click | 🟡 Medium | 🟢 1 Command |
| **Free Tier Available** | ✅ Yes | ✅ Yes | ✅ Yes | ✅ 100% Free Forever |

---

## 🥇 Method 1: Deploy on Render (Recommended for 24/7 Production)

Render is the optimal free cloud platform because it runs the provided Dockerfile as a persistent container with zero streaming timeouts.

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/Ayushnot41/omniroute-cloud-gateway)

### Step-by-Step:
1. Create a free account at [render.com](https://render.com).
2. Click **New +** -> **Web Service**.
3. Select **Build and deploy from a Git repository** and connect:
   https://github.com/Ayushnot41/omniroute-cloud-gateway
4. Settings:
   - **Name**: omniroute-cloud-gateway
   - **Runtime**: Docker
   - **Instance Type**: Free
5. Click **Advanced** -> **Add Disk**:
   - **Name**: omniroute-data
   - **Mount Path**: /app/data
   - **Size**: 1 GB
6. Click **Create Web Service**.
7. In ~2 minutes, Render generates your live public URL:
   https://omniroute-cloud-gateway.onrender.com

---

## 🥈 Method 2: Deploy on Vercel

If you prefer Vercel for web hosting:

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/Ayushnot41/omniroute-cloud-gateway)

### Step-by-Step:
1. Log in to [vercel.com](https://vercel.com) and click **Add New...** -> **Project**.
2. Select your repository: Ayushnot41/omniroute-cloud-gateway.
3. In **Environment Variables**, add:
   - PORT: 3000
   - REQUIRE_API_KEY: alse
   - NODE_ENV: production
4. Click **Deploy**.
5. Once built, Vercel gives you:
   https://omniroute-cloud-gateway.vercel.app

> [!IMPORTANT]
> **Vercel Architectural Notice**: Vercel runs stateless serverless functions. If users generate long-thinking model responses exceeding 15 seconds, Vercel free tier may return 504 Gateway Timeout. Additionally, SQLite database changes in /tmp reset upon function cold boot. For production persistence, use Method 1 (Render) or Method 3 (Cloudflare Tunnel).

---

## 🥉 Method 3: Instant Live URL via Cloudflare Tunnel (0 Cloud Cost)

If OmniRoute is already running on your machine (http://localhost:20128), you can expose it securely to the world in 10 seconds:

`ash
# 1. Install Cloudflare CLI
winget install Cloudflare.cloudflared

# 2. Start the instant public HTTPS tunnel
cloudflared tunnel --url http://localhost:20128
`

You will get an instant public URL:
https://<random-subdomain>.trycloudflare.com

Anyone across the globe can now access your dashboard and /v1/chat/completions!

---

## 🔗 How to Put the Live Link on GitHub

Once you have your live URL (from Render, Vercel, or Cloudflare):

### 1. Set the GitHub Repository 'Website' Field:
1. Go to your repository: [https://github.com/Ayushnot41/omniroute-cloud-gateway](https://github.com/Ayushnot41/omniroute-cloud-gateway)
2. At the top right of the repo, look for the **About** section.
3. Click the gear icon next to **About**.
4. In the **Website** field, paste your live URL (e.g. https://omniroute-cloud-gateway.onrender.com).
5. Click **Save changes**.

### 2. Update the README Badge:
In your README.md, update the **Live Demo** badge:
`markdown
[![Live Demo](https://img.shields.io/badge/Live%20Demo-Online-brightgreen?style=flat-square&logo=google-chrome)](https://YOUR-LIVE-URL-HERE)
`
