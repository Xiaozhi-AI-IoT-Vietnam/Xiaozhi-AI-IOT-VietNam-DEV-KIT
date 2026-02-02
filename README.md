# 🤖 Xiaozhi AI IOT VietNam - ESP32 Dev Kit

> 🔧 Bộ công cụ phát triển firmware **ESP32-S3 / ESP32-P4** tích hợp AI - Tối ưu cho **Xiaozhi AI Voice Assistant**

<p align="center">
  <img src="https://img.shields.io/badge/ESP32--S3-Supported-blue?style=for-the-badge&logo=espressif" alt="ESP32-S3">
  <img src="https://img.shields.io/badge/ESP32--P4-Supported-blue?style=for-the-badge&logo=espressif" alt="ESP32-P4">
  <img src="https://img.shields.io/badge/ESP--IDF-5.x-green?style=for-the-badge&logo=espressif" alt="ESP-IDF">
  <img src="https://img.shields.io/badge/Xiaozhi-Optimized-orange?style=for-the-badge" alt="Xiaozhi">
  <img src="https://img.shields.io/badge/AI-Powered-purple?style=for-the-badge" alt="AI Powered">
  <img src="https://img.shields.io/badge/Made%20in-Vietnam-red?style=for-the-badge" alt="Made in Vietnam">
</p>

---

## 🎯 Giới Thiệu

**Xiaozhi AI IOT VietNam Dev Kit** là bộ công cụ phát triển firmware được thiết kế đặc biệt cho:

- 🎙️ **Xiaozhi AI Voice Assistant** - Trợ lý giọng nói thông minh
- 📟 **ESP32-S3** - Chip AI mạnh mẽ với PSRAM, hỗ trợ AI acceleration
- 🚀 **ESP32-P4** - Thế hệ mới nhất, hiệu năng cao cho AI Edge

### 📦 Mã nguồn Xiaozhi ESP32 Vietnam

Dev Kit này được tối ưu để phát triển dự án **Xiaozhi ESP32 Vietnam**:

<p align="center">
  <a href="https://github.com/Xiaozhi-AI-IoT-Vietnam/xiaozhi-esp32_vietnam">
    <img src="https://img.shields.io/badge/🔗_Mã_nguồn_Xiaozhi-ESP32_Vietnam-orange?style=for-the-badge" alt="Source Code">
  </a>
</p>

```
📁 xiaozhi-esp32_vietnam/
├── main/                 # Application code
│   ├── application.cc    # State machine & core logic
│   ├── audio/            # Audio processing (I2S, Opus, VAD)
│   ├── display/          # LVGL UI components
│   ├── protocols/        # MQTT, WebSocket
│   └── boards/           # Board configurations
├── components/           # ESP-IDF components
└── sdkconfig            # Build configuration
```

### 🛠️ Dev Kit cung cấp:

- 🧠 **AI-Powered Development**: Tích hợp sẵn với 5 công cụ AI hàng đầu (Antigravity, GitHub Copilot, Cursor, Windsurf, Cline)
- 📚 **5 Skill chuyên biệt**: ESP32 Firmware, Audio Processing, LVGL Display, MQTT Protocol, **Xiaozhi Patterns**
- 🔄 **7 Workflow chuẩn**: Từ lập kế hoạch `/plan` đến deploy `/git`
- 💻 **16 Code Snippets**: Các pattern phổ biến cho Xiaozhi & ESP-IDF
- ⚡ **One-click Install**: Cài đặt trong 30 giây với script tự động

---

## ✨ Lợi Ích

### 🚀 Tăng Tốc Phát Triển
- **Giảm 80% thời gian setup** dự án ESP32 mới
- **Code nhanh hơn 10x** với AI assistant đã được train sẵn về ESP-IDF
- **Snippets có sẵn** cho tất cả pattern phổ biến (mutex, PSRAM, FreeRTOS tasks...)

### 🎯 Chuẩn Hóa Code Quality
- **Coding standards** được enforce tự động
- **Best practices** cho memory management, thread safety, error handling
- **Code review workflow** đảm bảo chất lượng

### 🛠️ Đầy Đủ Công Cụ
- **VSCode Tasks**: Build, Flash, Monitor chỉ với 1 phím tắt
- **Debug guides**: Troubleshooting cho các lỗi thường gặp
- **Architecture docs**: Hiểu rõ cấu trúc dự án

### 🌐 Hỗ Trợ Đa Nền Tảng
- ✅ **MacOS** - Full support
- ✅ **Linux** - Full support  
- ✅ **Windows** - Full support

### 🇻🇳 Localized cho Việt Nam
- Tài liệu và workflow bằng **tiếng Việt**
- Tối ưu cho các dự án **IoT tại Việt Nam**
- Hỗ trợ từ cộng đồng **Xiaozhi AI IOT VietNam**

---

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

| Link | Mô tả |
|------|-------|
| [**Xiaozhi ESP32 Vietnam**](https://github.com/Xiaozhi-AI-IoT-Vietnam/xiaozhi-esp32_vietnam) | 🇻🇳 Mã nguồn chính - Fork tối ưu cho Việt Nam |
| [Original Xiaozhi](https://github.com/78/xiaozhi-esp32) | 🇨🇳 Dự án gốc từ tác giả 78 |
| [ESP-IDF Docs](https://docs.espressif.com/projects/esp-idf/) | 📚 Tài liệu ESP-IDF chính thức |
| [LVGL 9.x](https://docs.lvgl.io/9.4/) | 🎨 Thư viện giao diện LVGL |

---

## 👤 Author

**Nguyễn Đức Hoài**

- 🔗 GitHub: [nguyenduchoai](https://github.com/nguyenduchoai)
- 🌐 Website: [xiaozhi-ai-iot.vn](https://xiaozhi-ai-iot.vn/)

---

**Made with ❤️ for Xiaozhi AI IOT VietNam 🚀**
