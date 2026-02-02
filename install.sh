#!/bin/bash
# ============================================
# ESP32 Firmware Dev Kit - Installer
# For Mac/Linux
# ============================================

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

clear
echo ""
echo -e "${CYAN}╔═══════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║                                                   ║${NC}"
echo -e "${CYAN}║   ${GREEN}🔧 ESP32 Firmware Dev Kit Installer${CYAN}            ║${NC}"
echo -e "${CYAN}║                                                   ║${NC}"
echo -e "${CYAN}║   ${YELLOW}Compatible with:${CYAN}                               ║${NC}"
echo -e "${CYAN}║   • Antigravity • GitHub Copilot • Cursor${CYAN}        ║${NC}"
echo -e "${CYAN}║   • Windsurf • Cline • VSCode${CYAN}                    ║${NC}"
echo -e "${CYAN}║                                                   ║${NC}"
echo -e "${CYAN}╚═══════════════════════════════════════════════════╝${NC}"
echo ""

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Get target directory
if [ -z "$1" ]; then
    echo -e "${YELLOW}Usage: ./install.sh /path/to/your/esp32-project${NC}"
    echo ""
    read -p "Enter target directory (or press Enter for current directory): " TARGET_DIR
    if [ -z "$TARGET_DIR" ]; then
        TARGET_DIR="$(pwd)"
    fi
else
    TARGET_DIR="$1"
fi

# Expand path
TARGET_DIR=$(cd "$TARGET_DIR" 2>/dev/null && pwd || echo "$TARGET_DIR")

echo -e "${BLUE}📁 Target: ${NC}$TARGET_DIR"
echo ""

# Check if directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo -e "${RED}❌ Directory does not exist: $TARGET_DIR${NC}"
    exit 1
fi

# Check if ESP32 project
if [ -f "$TARGET_DIR/CMakeLists.txt" ] || [ -f "$TARGET_DIR/sdkconfig" ] || [ -d "$TARGET_DIR/main" ]; then
    echo -e "${GREEN}✓ ESP32/ESP-IDF project detected${NC}"
else
    echo -e "${YELLOW}⚠ This doesn't look like an ESP32 project${NC}"
    read -p "Continue anyway? [y/N] " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${RED}Installation cancelled.${NC}"
        exit 1
    fi
fi

echo ""
echo -e "${BLUE}📦 Installing ESP32 Dev Kit...${NC}"
echo ""

# Backup existing .agent
if [ -d "$TARGET_DIR/.agent" ]; then
    BACKUP_DIR="$TARGET_DIR/.agent.backup.$(date +%Y%m%d%H%M%S)"
    echo -e "${YELLOW}📦 Backing up existing .agent...${NC}"
    mv "$TARGET_DIR/.agent" "$BACKUP_DIR"
fi

# Install components
echo -e "${GREEN}📁 Installing .agent folder...${NC}"
cp -r "$SCRIPT_DIR/.agent" "$TARGET_DIR/"

echo -e "${GREEN}📝 Installing GEMINI.md...${NC}"
cp "$SCRIPT_DIR/GEMINI.md" "$TARGET_DIR/"

echo -e "${GREEN}🤖 Installing Copilot config...${NC}"
mkdir -p "$TARGET_DIR/.github"
cp "$SCRIPT_DIR/.github/copilot-instructions.md" "$TARGET_DIR/.github/"

echo -e "${GREEN}🖱️  Installing Cursor rules...${NC}"
cp "$SCRIPT_DIR/.cursorrules" "$TARGET_DIR/"

echo -e "${GREEN}🏄 Installing Windsurf rules...${NC}"
cp "$SCRIPT_DIR/.windsurfrules" "$TARGET_DIR/"

echo -e "${GREEN}🤖 Installing Cline rules...${NC}"
cp "$SCRIPT_DIR/.clinerules" "$TARGET_DIR/"

echo -e "${GREEN}💻 Installing VSCode config...${NC}"
mkdir -p "$TARGET_DIR/.vscode"
cp -r "$SCRIPT_DIR/.vscode/"* "$TARGET_DIR/.vscode/" 2>/dev/null || true

echo ""
echo -e "${GREEN}╔═══════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║         ✅ Installation Complete!                 ║${NC}"
echo -e "${GREEN}╚═══════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}📚 What's installed:${NC}"
echo "   ├── 5 ESP32 skills (firmware, audio, display, mqtt, patterns)"
echo "   ├── 7 workflows (/plan, /code, /test, /fix, /review, /design, /git)"
echo "   ├── 4 coding rules"
echo "   ├── 6 specialized agents"
echo "   ├── 16 VSCode snippets"
echo "   └── Build/Flash tasks"
echo ""
echo -e "${BLUE}🔧 AI Tools configured:${NC}"
echo "   ├── Antigravity (GEMINI.md)"
echo "   ├── GitHub Copilot (.github/copilot-instructions.md)"
echo "   ├── Cursor (.cursorrules)"
echo "   ├── Windsurf (.windsurfrules)"
echo "   └── Cline (.clinerules)"
echo ""
echo -e "${CYAN}🚀 Quick Start:${NC}"
echo "   /plan    - Plan new feature"
echo "   /code    - Implement code"
echo "   /test    - Build & flash"
echo "   /fix     - Debug issues"
echo "   /review  - Code review"
echo ""
echo -e "${YELLOW}📖 Documentation: .agent/README.md${NC}"
echo ""
