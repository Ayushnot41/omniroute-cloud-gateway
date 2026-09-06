<div align="center">

# 🚀 OmniRoute Gateway — The Open-Source OpenRouter Alternative

**Never stop coding. 352+ providers · 90+ free tiers · ~1.51B free tokens/mo · 19 routing strategies · RTK+Caveman compression.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)
[![Docker](https://img.shields.io/badge/Docker-Hub-2496ED?logo=docker&logoColor=white)](https://hub.docker.com/r/diegosouzapw/omniroute)
[![npm](https://img.shields.io/npm/v/omniroute?color=cb3837&logo=npm)](https://www.npmjs.com/package/omniroute)
[![MCP Compatible](https://img.shields.io/badge/MCP-110%20Tools-blueviolet)](https://modelcontextprotocol.io)

</div>

---

## 🌟 What is OmniRoute?

OmniRoute is a production-ready, self-hostable AI gateway that aggregates **352+ AI providers**, over **90 free tiers**, and thousands of models behind a single OpenAI-compatible `/v1` endpoint. It features quota-aware automatic fallback, 19 intelligent routing strategies, native Model Context Protocol (MCP) server integration, Google Antigravity OAuth linking, and context compression saving 15–95% on token bills.

Deploy it locally on your laptop or in the cloud to create your own **private OpenRouter** for your team or the open-source community.

---

## 💰 ~1.51 Billion Free Tokens / Month

OmniRoute catalogs **455 free-tier entries across 40 recurring pool keys** deduplicated by shared pool:
- **Google Gemini**: ~60M tokens/month free
- **Groq & Cerebras**: High-throughput inference for Llama 3 & DeepSeek
- **Mistral AI**: Free conversational and code endpoints
- **Keyless Free Backends**: OpenCode Free and Felo pre-configured out-of-the-box

---

## 🎯 19 Routing Strategies & Auto-Combo

A **Combo** is a chain of models OmniRoute routes across automatically. If a provider hits a rate limit (`HTTP 429`), network error, or credit expiration, OmniRoute seamlessly moves to the next eligible healthy target.

| # | Strategy | Description |
| :---: | :--- | :--- |
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

## 🖥️ Web Dashboard Tour

When running, access the rich Next.js dashboard at **`http://localhost:20128`**:

1. **Overview (`/dashboard`)**: Real-time request volumes, latency graphs, active connection health, and circuit breakers.
2. **Providers & OAuth (`/dashboard/providers`)**: Add API keys or connect Google Antigravity, Claude Code, and Copilot via OAuth.
3. **Combos (`/dashboard/combos`)**: Drag-and-drop model failover chains and select your routing strategy.
4. **Free Tiers (`/dashboard/free-tiers`)**: Monitor your free token allocation across 34+ providers.
5. **API Keys (`/dashboard/keys`)**: Generate client keys with rate limits (RPM/RPD) and model restrictions.
6. **Compression Studio (`/dashboard/compression`)**: Configure RTK and Caveman token killers to slash token costs by up to 95%.
7. **MCP Server (`/dashboard/mcp`)**: Inspect 110 built-in agent tools.

---

## 🚀 Quick Start

### 1. Local Run
```bash
npm install -g omniroute
omniroute serve
```
Open [http://localhost:20128](http://localhost:20128) (Default password: `CHANGEME`).

### 2. Docker Compose
```bash
docker compose up -d
```

### 3. Deploy Live (Open-Source OpenRouter)
See [tunnel-setup.md](./tunnel-setup.md) for 1-command public HTTPS deployment via Cloudflare Tunnels:
```bash
cloudflared tunnel --url http://localhost:20128
```

---

## 🤖 Using with Coding Agents

OmniRoute connects with any agent out-of-the-box:

```bash
# Claude Code
omniroute setup-claude

# Cursor
omniroute setup-cursor

# VS Code / Continue
omniroute setup-continue

# Aider / OpenCode / Goose / Qwen
omniroute setup-aider
omniroute setup-opencode
omniroute setup-goose
omniroute setup-qwen
```

---

## 🔒 Security & Privacy

- **Local-First**: Prompts never pass through third-party telemetry.
- **AES-256-GCM Encryption**: All provider keys and tokens are encrypted at rest using `STORAGE_ENCRYPTION_KEY`.
- **3-Layer Resilience**: Circuit breakers (provider level) + connection cooldowns (key level) + model lockouts (model level).

---

## 📄 License

MIT © Diego Souza & OmniRoute Contributors
