# Live Public Deployment: Open-Source OpenRouter Alternative

This guide explains how to deploy your OmniRoute gateway live on the internet so that anyone in the world (or your external apps, teammates, and mobile agents) can connect to it via an OpenAI-compatible endpoint with custom domain and HTTPS.

---

## Method 1: Instant Cloudflare Tunnel (Free, Zero Port-Forwarding, Free HTTPS)

Cloudflare Tunnel securely connects your local machine or VPS to Cloudflare’s global edge network without opening any firewall ports.

### Step 1: Install `cloudflared`
- On Windows (via winget):
  ```powershell
  winget install Cloudflare.cloudflared
  ```
- Or download from [Cloudflare Releases](https://github.com/cloudflare/cloudflared/releases).

### Step 2: Quick Instant Public URL (No Domain Needed)
To instantly generate a live public HTTPS URL pointing to your local OmniRoute:
```powershell
cloudflared tunnel --url http://localhost:20128
```
Cloudflare will output a public URL like:
`https://random-subdomain.trycloudflare.com`

Any external user or tool can now use:
- **Base URL**: `https://random-subdomain.trycloudflare.com/v1`
- **Dashboard**: `https://random-subdomain.trycloudflare.com/dashboard`

---

## Method 2: Custom Domain on Cloudflare (Production OpenRouter Setup)

To use your own domain (e.g. `https://api.yourdomain.com`):

1. Log in to Cloudflare:
   ```bash
   cloudflared tunnel login
   ```
2. Create a named tunnel:
   ```bash
   cloudflared tunnel create omniroute-gateway
   ```
3. Route DNS to your tunnel:
   ```bash
   cloudflared tunnel route dns omniroute-gateway api.yourdomain.com
   ```
4. Configure `~/.cloudflared/config.yml`:
   ```yaml
   tunnel: <TUNNEL-ID>
   credentials-file: /path/to/<TUNNEL-ID>.json

   ingress:
     - hostname: api.yourdomain.com
       service: http://localhost:20128
     - service: http_status:404
   ```
5. Run the tunnel:
   ```bash
   cloudflared tunnel run omniroute-gateway
   ```

Now your gateway is live at `https://api.yourdomain.com` with enterprise DDOS protection, SSL, and global edge routing!

---

## Method 3: Cloud VPS Deployment (Railway / Render / Hetzner / DigitalOcean)

Using the bundled `docker-compose.yml`:

```bash
git clone <your-github-repo-url>
cd omniroute-gateway

# Generate encryption key
ENCRYPTION_KEY=$(openssl rand -hex 32)
echo "STORAGE_ENCRYPTION_KEY=$ENCRYPTION_KEY" > .env
echo "INITIAL_PASSWORD=YourStrongPasswordHere" >> .env
echo "REQUIRE_API_KEY=true" >> .env

docker compose up -d
```
