# ESP32 Firmware Dev Kit

> 🔧 AI-powered development kit for ESP32/ESP-IDF firmware projects

## 🚀 Quick Install

### Mac/Linux
```bash
./install.sh /path/to/your/esp32-project
```

### Windows
```batch
install.bat C:\path\to\your\esp32-project
```

Or just double-click `install.sh` / `install.bat` and enter the path.

---

## 📦 What's Inside

```
esp32_dev_kit/
├── install.sh              # Mac/Linux installer
├── install.bat             # Windows installer
├── GEMINI.md               # Antigravity config
├── .cursorrules            # Cursor AI config
├── .windsurfrules          # Windsurf config
├── .clinerules             # Cline/Claude config
├── .github/
│   └── copilot-instructions.md  # GitHub Copilot
├── .vscode/
│   ├── esp32.code-snippets # 16 code snippets
│   ├── tasks.json          # Build/Flash tasks
│   └── extensions.json     # Recommended extensions
└── .agent/
    ├── ARCHITECTURE.md     # System architecture
    ├── CHEATSHEET.md       # Quick reference
    ├── TROUBLESHOOTING.md  # Debug guide
    ├── README.md           # Full documentation
    ├── skills/             # 5 ESP32 skills
    ├── workflows/          # 7 workflows
    ├── roles/              # 4 roles
    ├── rules/              # 4 rules
    └── agents/             # 6 agents
```

---

## 🔧 Supported AI Tools

| Tool | Config File | Status |
|------|-------------|--------|
| **Antigravity** | `GEMINI.md` | ✅ Full |
| **GitHub Copilot** | `.github/copilot-instructions.md` | ✅ Full |
| **Cursor** | `.cursorrules` | ✅ Full |
| **Windsurf** | `.windsurfrules` | ✅ Full |
| **Cline/Claude** | `.clinerules` | ✅ Full |

---

## 📚 Skills

| Skill | Purpose |
|-------|---------|
| `esp32-firmware` | ESP-IDF, FreeRTOS, memory |
| `esp32-audio` | I2S, Opus, codecs, wake word |
| `lvgl-display` | LVGL 9.x graphics |
| `esp32-mqtt-protocol` | MQTT, notifications |
| `xiaozhi-patterns` | State machine, callbacks |

---

## 🔄 Workflows

| Command | Description |
|---------|-------------|
| `/plan` | Plan new feature |
| `/design` | Design architecture |
| `/code` | Implement code |
| `/test` | Build, flash, test |
| `/review` | Code review |
| `/fix` | Debug issues |
| `/git` | Commit & push |

---

## 💻 VSCode Snippets

Type these shortcuts in .cc/.cpp files:

| Shortcut | Output |
|----------|--------|
| `logi` | `ESP_LOGI(TAG, "...");` |
| `loge` | `ESP_LOGE(TAG, "...");` |
| `tag` | `static const char *TAG = "...";` |
| `errcheck` | Error check pattern |
| `psram` | PSRAM malloc |
| `schedule` | Schedule to main thread |
| `lock` | Mutex lock |
| `task` | FreeRTOS task |
| `mqtthandler` | MQTT handler |
| `lvlabel` | LVGL label |
| `jsonparse` | cJSON parse |

---

## 🛠️ VSCode Tasks

Press `Cmd+Shift+B` / `Ctrl+Shift+B`:

- **ESP32: Build** - Build firmware
- **ESP32: Flash** - Flash to device
- **ESP32: Monitor** - Serial monitor
- **ESP32: Flash & Monitor** - Both
- **ESP32: Clean Build** - Full rebuild
- **ESP32: Menuconfig** - Configure

---

## 📖 Documentation

- `.agent/README.md` - Full documentation
- `.agent/CHEATSHEET.md` - Quick reference
- `.agent/TROUBLESHOOTING.md` - Debug guide
- `.agent/ARCHITECTURE.md` - System design

---

## 🔗 References

- [Original Xiaozhi](https://github.com/78/xiaozhi-esp32)
- [ESP-IDF Docs](https://docs.espressif.com/projects/esp-idf/)
- [LVGL 9.x](https://docs.lvgl.io/9.4/)

---

**Made with ❤️ for ESP32 Developers**
