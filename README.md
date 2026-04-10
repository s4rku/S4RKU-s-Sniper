# 🎯 S4RKU's Vanity Sniper

<div align="center">

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Node](https://img.shields.io/badge/node-%3E%3D20.18-brightgreen.svg)
![Status](https://img.shields.io/badge/status-active-success.svg)

**Lightning-fast Discord vanity URL sniping tool with MFA bypass**

*Developed by [6twf](https://github.com/s4rku) | Powered by S4RKU*

</div>

---

## ⚡ Quick Start

Get up and running in 3 easy steps:

1. **Run the setup script** (Windows: `setup.bat`, Linux/Mac: `./setup.sh`)
2. **Edit `config.json`** with your Discord credentials
3. **Start the sniper**: `npm start`

> 📖 **First time?** Check out the [Installation](#-installation) and [Configuration](#-configuration) sections below for detailed instructions.

---

## 📋 Table of Contents

- [Features](#-features)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Configuration](#-configuration)
- [Usage](#-usage)
- [Commands](#-commands)
- [How It Works](#-how-it-works)
- [Security Notes](#-security-notes)
- [Troubleshooting](#-troubleshooting)
- [License](#-license)
- [Support](#-support)

---

## ✨ Features

- ⚡ **Lightning-Fast Sniping** - HTTP/2 optimized requests for minimal latency
- 🔐 **MFA Auto-Bypass** - Automatic MFA token refresh and verification
- 🎯 **Real-Time Monitoring** - Instant vanity URL change detection
- 📊 **Speed Analytics** - Track your claim speed with precision timing
- 🔔 **Multi-Notification** - Webhook + DM alerts for successful snipes
- 🛡️ **Auto-Kick System** - Automatically remove unwanted members
- ⏸️ **Invite Control** - Pause server invites for 24 hours
- 🎨 **Professional UI** - Clean, branded interface with custom branding
- 🔄 **Auto-Reconnect** - Resilient connection handling

---

## 📦 Prerequisites

Before you begin, ensure you have the following installed:

- **Node.js** v20.18 or higher
- **npm** (comes with Node.js)
- A Discord account with vanity URL permissions
- A server with vanity URL capability (Level 3 Boost)

---

## 🚀 Installation

### Quick Setup (Recommended)

**Windows:**
```bash
# Double-click setup.bat or run in terminal:
setup.bat
```

**Linux/Mac:**
```bash
# Make the script executable and run:
chmod +x setup.sh
./setup.sh
```

### Manual Installation

#### 1. Clone the Repository

```bash
git clone https://github.com/s4rku/S4RKU-s-Sniper.git
cd S4RKU's Sniper
```

#### 2. Install Dependencies

```bash
npm install
```

#### 3. Configure the Tool

**Windows:**
```bash
copy config.example.json config.json
```

**Linux/Mac:**
```bash
cp config.example.json config.json
```

Then edit `config.json` with your credentials (see [Configuration](#-configuration) section).

#### 4. Run the Sniper

```bash
npm start
```

**OR**

```bash
node snipe.js
```

---

## ⚙️ Configuration

Open `config.json` and fill in your details:

```json
{
  "discord": {
    "token": "YOUR_DISCORD_TOKEN",
    "password": "YOUR_DISCORD_PASSWORD"
  },
  "server": {
    "serverId": "YOUR_SERVER_ID",
    "channelId": "YOUR_CHANNEL_ID"
  },
  "notifications": {
    "userToDm": "YOUR_USER_ID",
    "webhookUrl": "YOUR_WEBHOOK_URL"
  }
}
```

### 🔑 Getting Your Credentials

**Discord Token:**
1. Open Discord in your browser or desktop app
2. Press `Ctrl + Shift + I` (Windows) or `Cmd + Option + I` (Mac)
3. Go to the **Network** tab
4. Filter by `api`
5. Click any request and find the `Authorization` header

**Server & Channel IDs:**
1. Enable Developer Mode in Discord: `Settings > Advanced > Developer Mode`
2. Right-click your server/channel and select "Copy ID"

**Webhook URL:**
1. Go to your Discord channel settings
2. Navigate to `Integrations > Webhooks`
3. Create a new webhook and copy the URL

---

## 🎮 Usage

### Start the Sniper

```bash
node snipe.js
```

### Initial Setup

1. **Enable MFA Verification** (Required First!)
   ```
   .mfa on
   ```

2. **Enable the Sniper**
   ```
   .sniper on
   ```

3. **View All Commands**
   ```
   .help
   ```

---

## 📜 Commands

### 🔧 Basic Commands

| Command | Description |
|---------|-------------|
| `.help` | Display the help menu with all commands |
| `.sniper on/off` | Enable or disable the vanity sniper |
| `.mfa on/off` | Enable/disable MFA verification (required before sniping) |

### 🎯 Vanity URL Commands

| Command | Description |
|---------|-------------|
| `.claim <code>` | Claim a specific vanity URL (e.g., `.claim nitro`) |
| `.vanity` | List all vanity URLs in your servers |
| `.delete` | Delete the current vanity URL from your server |
| `.leave <id/code>` | Leave a server by ID or vanity code |

### ⚙️ Advanced Commands

| Command | Description |
|---------|-------------|
| `.autokick` | Toggle automatic member kicking on join |
| `.pause` | Disable server invites for 24 hours |
| `.restart` | Restart the sniper bot |

---

## 🔍 How It Works

1. **Monitoring** - The tool continuously monitors your server for vanity URL changes
2. **Detection** - When a vanity URL is removed or changed, it triggers instantly
3. **MFA Verification** - Automatically refreshes MFA tokens every 4.5 minutes
4. **Sniping** - Sends HTTP/2 requests to claim the vanity URL within milliseconds
5. **Notification** - Sends detailed reports via webhook and DM with claim speed

### Performance

- **Request Method**: HTTP/2 (canary.discord.com)
- **MFA Refresh**: Every 270 seconds (4.5 minutes)
- **Detection Time**: Real-time via Discord gateway events
- **Claim Speed**: Typically < 1 second

---

## 🔒 Security Notes

> ⚠️ **Important Security Information**

- **Never share your token** - Your Discord token provides full account access
- **Keep config.json private** - Contains sensitive credentials
- **Use at your own risk** - Self-botting may violate Discord's Terms of Service
- **Secure your files** - Add `config.json` to `.gitignore` before publishing

### Recommended Practices

✅ Use a dedicated Discord account  
✅ Enable 2FA on your account  
✅ Keep your token secure  
✅ Don't share screenshots with your token visible  
✅ Regularly update your password in config  

---

## 🛠️ Troubleshooting

### Setup Issues

**"config.json not found"**
- Run the setup script (`setup.bat` or `./setup.sh`)
- Or manually copy the example: `copy config.example.json config.json` (Windows) or `cp config.example.json config.json` (Linux/Mac)

**"Please configure config.json with your Discord token"**
- Open `config.json` in a text editor
- Replace `YOUR_DISCORD_TOKEN_HERE` with your actual Discord token
- Make sure to save the file after editing

**"Node.js v20.18 or higher is required"**
- Check your current version: `node --version`
- Download and install the latest LTS version from: https://nodejs.org/

**Dependencies fail to install**
- Clear npm cache: `npm cache clean --force`
- Delete `node_modules` folder and `package-lock.json`
- Run `npm install` again

### Common Issues

**"Login error"**
- Verify your Discord token is correct and not expired
- Check if your account is still active

**"MFA verification failed"**
- Ensure your password in `config.json` is correct
- Try running `.mfa off` then `.mfa on` again

**"Failed to claim vanity"**
- Verify your server has vanity URL permissions (Level 3 Boost)
- Check if you have the necessary permissions in the server
- Ensure MFA is enabled before sniping

**Webhook not sending**
- Verify the webhook URL is correct
- Check if the webhook still exists in your channel
- Ensure the bot has permission to send messages

**Tool crashes on startup**
- Ensure Node.js v20.18+ is installed: `node --version`
- Run `npm install` to ensure all dependencies are installed
- Check that `config.json` has valid JSON syntax

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

```
MIT License
Copyright (c) 2026 6twf (S4RKU)
```

---

## 💬 Support

- **Discord**: [6twf](https://discord.gg/simps)
- **GitHub**: [S4RKU](https://github.com/s4rku)
- **Discord Server**: [Join S4RKU's Community](https://discord.gg/simps)
- **Issues**: [Report a bug](https://github.com/s4rku/S4RKU-s-Sniper/issues)

---

<div align="center">

**Made with ❤️ by S4RKU**

⭐ Star this repo if you found it helpful!

</div>
