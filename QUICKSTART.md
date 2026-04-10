# 🚀 Quick Start Guide - S4RKU's Vanity Sniper

This guide will help you get the sniper up and running in under 5 minutes!

## 📋 Prerequisites

Before starting, make sure you have:

- ✅ **Node.js v20.18 or higher** installed ([Download here](https://nodejs.org/))
- ✅ A **Discord account** with vanity URL permissions
- ✅ A **server with Level 3 Boost** (for vanity URLs)

## ⚡ Step-by-Step Setup

### Step 1: Install the Tool

**Option A - Using Setup Script (Easiest)**

**Windows:**
```bash
# Simply double-click setup.bat
# OR run in terminal:
setup.bat
```

**Linux/Mac:**
```bash
chmod +x setup.sh
./setup.sh
```

**Option B - Manual Installation**

```bash
# 1. Install dependencies
npm install

# 2. Create config file
copy config.example.json config.json  # Windows
cp config.example.json config.json    # Linux/Mac
```

---

### Step 2: Get Your Discord Token

1. Open Discord in your **browser** or **desktop app**
2. Press `Ctrl + Shift + I` (Windows) or `Cmd + Option + I` (Mac)
3. Click on the **Network** tab
4. In the filter box, type: `api`
5. Click on any request that appears
6. Scroll down to **Headers** section
7. Find **Authorization** and copy the value (it's a long string)

⚠️ **Important:** Never share your token with anyone!

---

### Step 3: Get Your Server & Channel IDs

1. Open Discord **Settings**
2. Go to **Advanced** → Enable **Developer Mode**
3. Now you can right-click on:
   - **Server icon** → Copy ID (this is your `serverId`)
   - **Channel name** → Copy ID (this is your `channelId`)
   - **Your username** → Copy ID (this is your `userToDm`)

---

### Step 4: Create a Webhook (Optional but Recommended)

1. Go to your Discord **channel settings**
2. Click on **Integrations** → **Webhooks**
3. Click **New Webhook**
4. Give it a name and copy the **Webhook URL**

---

### Step 5: Configure the Tool

Open `config.json` in any text editor (Notepad, VS Code, etc.) and fill in your details:

```json
{
  "discord": {
    "token": "paste_your_token_here",
    "password": "your_discord_password"
  },
  "server": {
    "serverId": "your_server_id",
    "channelId": "your_channel_id"
  },
  "notifications": {
    "userToDm": "your_user_id",
    "webhookUrl": "your_webhook_url"
  }
}
```

💡 **Save the file** after editing!

---

### Step 6: Start the Sniper

```bash
npm start
```

**OR**

```bash
node snipe.js
```

You should see the S4RKU's Sniper banner and a message saying it's getting started!

---

## 🎮 First Time Usage

Once the bot is running, go to your Discord channel and use these commands:

### 1️⃣ Enable MFA Verification (REQUIRED!)
```
.mfa on
```
This enables automatic MFA token refresh (required for sniping).

### 2️⃣ Enable the Sniper
```
.sniper on
```
This activates the vanity URL monitoring.

### 3️⃣ View All Commands
```
.help
```
This shows you all available commands.

---

## ✅ Verification Checklist

Before you start sniping, make sure:

- [ ] Node.js v20.18+ is installed
- [ ] Dependencies are installed (`npm install`)
- [ ] `config.json` is created and filled out
- [ ] Bot is running (you see the banner)
- [ ] Bot is online in Discord (green dot)
- [ ] MFA is enabled (`.mfa on`)
- [ ] Sniper is enabled (`.sniper on`)

---

## 🎯 Common Commands

| Command | Description |
|---------|-------------|
| `.help` | Show all commands |
| `.sniper on/off` | Enable/disable sniper |
| `.mfa on/off` | Enable/disable MFA |
| `.claim <code>` | Claim a vanity URL |
| `.vanity` | List your vanities |
| `.autokick` | Toggle auto-kick |
| `.pause` | Pause invites for 24h |

---

## 🆘 Need Help?

### Common Issues

**"config.json not found"**
→ Run the setup script or copy `config.example.json` to `config.json`

**"Please configure config.json with your Discord token"**
→ Open `config.json` and replace the placeholder values

**"Node.js v20.18 or higher is required"**
→ Download the latest Node.js from https://nodejs.org/

**Bot doesn't respond to commands**
→ Make sure you're using commands in the correct channel (the one you set in `channelId`)

### Get Support

- 📖 Read the full [README.md](README.md)
- 🐛 Report issues on [GitHub](https://github.com/s4rku/S4RKU's Sniper/issues)
- 💬 Join our [Discord server](https://discord.gg/simps)

---

## 🔒 Security Reminders

- ✅ Never share your `config.json` file
- ✅ Never commit your token to GitHub
- ✅ Use a dedicated Discord account if possible
- ✅ Enable 2FA on your Discord account
- ✅ Keep your password secure

---

<div align="center">

**That's it! You're ready to snipe! 🎯**

Made with ❤️ by S4RKU

</div>
