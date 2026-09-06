<div align="center">

# 🚀 OmniRoute — The Free AI Gateway

**Never stop coding. 352+ providers · 90+ free tiers · ~1.51B free tokens/mo · 19 routing strategies · RTK+Caveman compression.**

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Online%20(Cloudflare)-F38020?style=for-the-badge&logo=cloudflare&logoColor=white)](https://rec-profiles-bargains-seattle.trycloudflare.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
[![Docker](https://img.shields.io/badge/Docker-Hub-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/r/diegosouzapw/omniroute)
[![npm](https://img.shields.io/npm/v/omniroute?color=cb3837&style=for-the-badge&logo=npm)](https://www.npmjs.com/package/omniroute)
[![MCP Compatible](https://img.shields.io/badge/MCP-110%20Tools-blueviolet?style=for-the-badge)](https://modelcontextprotocol.io)

<br/>

<p align="center">
  <a href="https://rec-profiles-bargains-seattle.trycloudflare.com">
    <img src="https://img.shields.io/badge/🌐%20Open%20Live%20Dashboard-Cloudflare%20Edge-success?style=for-the-badge" height="36" />
  </a>
  &nbsp;&nbsp;
  <a href="https://render.com/deploy?repo=https://github.com/Ayushnot41/omniroute-cloud-gateway">
    <img src="https://render.com/images/deploy-to-render-button.svg" alt="Deploy to Render" height="36" />
  </a>
  &nbsp;&nbsp;
  <a href="https://vercel.com/new/clone?repository-url=https://github.com/Ayushnot41/omniroute-cloud-gateway">
    <img src="https://vercel.com/button" alt="Deploy with Vercel" height="36" />
  </a>
</p>

</div>

---

## 🌐 Live Public Access (Cloudflare Edge)

This OmniRoute instance is deployed live to the global Cloudflare Edge network:

- **Live Dashboard**: [**https://rec-profiles-bargains-seattle.trycloudflare.com**](https://rec-profiles-bargains-seattle.trycloudflare.com)
- **OpenAI-Compatible API Endpoint**: `https://rec-profiles-bargains-seattle.trycloudflare.com/v1`
- **Default Dashboard Password**: `CHANGEME`
- **Live Status**: 🟢 **Operational** (Zero Timeouts · Full WebSocket Support · Real-Time Token Streaming)

```bash
# Test the live Cloudflare gateway from anywhere in the world:
curl https://rec-profiles-bargains-seattle.trycloudflare.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{"model":"auto","messages":[{"role":"user","content":"Hello from Cloudflare Edge!"}]}'
```

---

## 💰 ~1.51 Billion Free Tokens / Month

> Stacking free tiers by hand is painful — dozens of SDKs, dozens of rate limits, and no idea how much you actually have. OmniRoute catalogs **455 free-tier entries across 40 recurring pool keys** and computes the token headline from the **20 pools with a published positive monthly budget**, deduplicated by shared pool. The result stays visible on the dashboard (`/dashboard/free-tiers`).

- **Google Gemini**: ~60M tokens/month free (Flash & Pro)
- **Groq & Cerebras**: Ultra-fast inference for Llama 3.3 70B & DeepSeek R1
- **Mistral AI**: Free conversational and code endpoints
- **Keyless Free Backends**: OpenCode Free and Felo pre-configured out-of-the-box

---

## 🎯 19 Routing Strategies & Auto-Combo

A **Combo** is a chain of models OmniRoute routes across automatically. If a provider hits a rate limit (`HTTP 429`), network error, or credit expiration, OmniRoute seamlessly moves to the next eligible healthy target.

| # | Strategy | Mechanism |
| :-: | :--- | :--- |
| 1 | `auto` | 15-factor real-time scoring (speed, quality, cost, headroom) |
| 2 | `priority` | Waterfall cascade: drains tier 1 before moving to tier 2 |
| 3 | `cost-optimized` | Selects lowest dollar cost from live pricing catalog |
| 4 | `headroom` | Routes to the provider with the most remaining rate-limit quota |
| 5 | `lkgp` | Last-Known-Good-Path (sticky until failure) |
| 6 | `quota-share` | Fair-share load balancing across pooled keys |
| 7 | `fusion` | Fans prompt out to a panel of models; judge synthesizes the best answer |
| 8 | `cache-optimized`| Reusable prompt prefixes pinned to maximize cache hits |
| 9 | `context-relay` | Seamless context handoff across targets for long chats |
| 10 | `pipeline` | Chains models where output of step N feeds step N+1 |
| 11-19 | `round-robin`, `weighted`, `p2c`, `least-used`, `random`, `reset-window`, `reset-aware`, `context-optimized`, `strict-random` | Advanced load balancing |

---

## 🗜️ RTK + Caveman Context Compression

OmniRoute features stacked context compression engines that reduce prompt tokens by **15% to 95%** without sacrificing code quality:

| Engine | Technique | Token Reduction | Best For |
| :--- | :--- | :-: | :--- |
| **RTK** | AST-based code pruning & syntax whitespace stripping | 25% – 50% | Heavy codebases, large files |
| **Caveman** | Grammatical reduction & conversational stopword removal | 40% – 70% | Agent loops, long chat histories |
| **Stacked** | Dual-pass RTK followed by Caveman lexical compression | **Up to 95%** | Massive context windows & MCP tools |

---

## 🖥️ Web Dashboard Screen Tour

Access the rich Next.js dashboard at **`https://rec-profiles-bargains-seattle.trycloudflare.com`** (or `http://localhost:20128` locally):

1. **Overview (`/dashboard`)**: Real-time request volumes, latency graphs, active connection health, and circuit breakers.
2. **Providers & OAuth (`/dashboard/providers`)**: Add API keys or connect Google Antigravity, Claude Code, and Copilot via OAuth.
3. **Combos (`/dashboard/combos`)**: Drag-and-drop model failover chains and select your routing strategy.
4. **Free Tiers (`/dashboard/free-tiers`)**: Monitor your free token allocation across 34+ providers.
5. **API Keys (`/dashboard/keys`)**: Generate client keys with rate limits (RPM/RPD) and model restrictions.
6. **Compression Studio (`/dashboard/compression`)**: Configure RTK and Caveman token killers to slash token costs by up to 95%.
7. **MCP Server (`/dashboard/mcp`)**: Inspect 110 built-in agent tools.

---


---

## 🛠️ Specialized Full-Stack, Backend, Database & Frontend Suites

OmniRoute features dedicated multi-model heavy cascades optimized specifically for targeted software engineering domains:

### 🌐 1. Full-Stack Heavy Suites (End-to-End Architecture & Integrations)
- 	era-5.6-fullstack: Ultra-heavy multi-model pipeline (o3-mini + claude-3-7-sonnet + deepseek-r1 + gpt-4o)
- opus-5-fullstack: Anthropic-led full-stack cascade (claude-3-7-sonnet + claude-3-5-sonnet + o3-mini)
- gpt-5.6-fullstack: OpenAI-led architectural synthesis (o3-mini + claude-3-7-sonnet + gpt-4o)
- gemini-3.8-fullstack: Google multimodal massive-context pipeline (gemini-2.0-flash-thinking + gemini-2.5-flash + claude-3-7-sonnet)
- groq-heavy-fullstack: Wafer-scale high-throughput full-stack engine (llama-3.3-70b + deepseek-r1 + llama-3.1-70b)

### 🗄️ 2. Backend & Database Heavy Suites (SQL, Schemas, High-Concurrency APIs)
- sol-5.6-database: High-precision reasoning cascade (o1 + o3-mini + deepseek-r1)
- opus-5-database: Deep logical query planner (claude-3-7-sonnet + o1 + o3-mini)
- gemini-3.5-database: Google massive relational context optimizer (gemini-flash-thinking + gemini-pro + o3-mini)
- deepseek-r1-database: Math & algorithmic database engine (deepseek-r1 + o1 + o3-mini)
- gpt-5.6-backend: Enterprise distributed systems & microservices backend pipeline
- opus-5-backend: System-level Rust/Go/Node backend architecture engine

### 🎨 3. Frontend Heavy Suites (Next.js, React, Tailwind, UI/UX Canvas)
- luna-5.6-frontend: High-aesthetic UI synthesizer (claude-3-7-sonnet + gpt-4o + gemini-2.5-flash)
- sonnet-5-frontend: Component & responsive motion specialist (claude-3-7-sonnet + claude-3-5-sonnet + gpt-4o)
- gemini-3.6-frontend: Visual and asset-integrated frontend pipeline (gemini-2.5-flash + claude-3-7-sonnet + gpt-4o)

---

## 🤖 Coding Agents & Downstream CLIs

Connect any coding agent or IDE with one command:

```bash
# Antigravity (Dual AI Gateway rule pre-configured)
# Point OPENAI_BASE_URL to your gateway:
export OPENAI_BASE_URL="https://rec-profiles-bargains-seattle.trycloudflare.com/v1"

# Claude Code
omniroute setup-claude --url https://rec-profiles-bargains-seattle.trycloudflare.com/v1

# Cursor
omniroute setup-cursor

# VS Code / Continue
omniroute setup-continue --url https://rec-profiles-bargains-seattle.trycloudflare.com/v1

# Aider / OpenCode / Goose / Qwen Code
omniroute setup-aider
omniroute setup-opencode
omniroute setup-goose
omniroute setup-qwen
```

---

## 🚀 Deployment Options

See [DEPLOYMENT.md](./DEPLOYMENT.md) for the complete cloud deployment blueprint:

- **Cloudflare Tunnel (Active)**: Live at `https://rec-profiles-bargains-seattle.trycloudflare.com`.
- **Render.com (1-Click)**: Uses [`render.yaml`](./render.yaml) for 24/7 Docker hosting with persistent storage.
- **Vercel**: Web deployment using [`vercel.json`](./vercel.json).
- **Docker Compose**: Self-host with `docker compose up -d`.

---

## 🔒 Security & Privacy

- **Local-First**: Prompts never pass through third-party telemetry.
- **AES-256-GCM Encryption**: All provider keys and tokens are encrypted at rest using `STORAGE_ENCRYPTION_KEY`.
- **3-Layer Resilience**: Circuit breakers (provider level) + connection cooldowns (key level) + model lockouts (model level).

---

## 📄 License

MIT © Diego Souza & OmniRoute Contributors
