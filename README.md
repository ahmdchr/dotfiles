# ⚙️ Dotfiles

Personal Linux dotfiles and desktop configuration tailored for **Hyprland** on Arch Linux.

---

## 🖥️ Desktop Suite Overview

| Component | Tool | Description |
|---|---|---|
| **Window Manager** | [Hyprland](https://hyprland.org) | Dynamic tiling Wayland compositor |
| **Status Bar** | [Waybar](https://github.com/Alexays/Waybar) & [HyprPanel](https://hyprpanel.com) | Highly customizable panels & status bar |
| **Terminal** | [Kitty](https://sw.kovidgoyal.net/kitty/) | GPU-accelerated terminal emulator |
| **Application Launcher** | [Rofi-Wayland](https://github.com/lbonn/rofi) | App launcher, powermenu & applets |
| **File Manager (TUI)** | [Yazi](https://github.com/sxyazi/yazi) | Blazing fast terminal file manager |
| **GTK & Theming** | [nwg-look](https://github.com/nwg-piotr/nwg-look) | GTK3 settings & theme switcher |
| **Lock & Idle** | `hyprlock` & `hypridle` | Screen locking and idle daemon |
| **System Fetch** | [Fastfetch](https://github.com/fastfetch-cli/fastfetch) | System information fetch tool |

---

## 📁 Repository Structure

```
dotfiles/
├── .config/
│   ├── hypr/          # Hyprland, hypridle, hyprlock configs
│   ├── hyprpanel/     # HyprPanel configuration & modules
│   ├── waybar/        # Waybar styles, layouts, colors & scripts
│   ├── kitty/         # Kitty terminal configuration
│   ├── rofi/          # Rofi themes, launchers, applets, powermenu
│   ├── yazi/          # Yazi file manager keymaps, theme, flavors
│   ├── nwg-look/      # GTK look & feel configuration
│   ├── dolphinrc      # Dolphin file manager settings
│   ├── pavucontrol.ini# Audio control settings
│   └── QtProject.conf # Qt5/Qt6 styling overrides
├── Pictures/
│   └── Wallpapers/    # Wallpapers
├── .bashrc            # Bash aliases and paths
├── .bash_profile      # Shell profile
├── install.sh         # Symlink installer & backup script
└── README.md
```

---

## 🚀 Installation & Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ahmdchr/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Apply configuration**:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```
   > Existing configurations in `~/.config` will be safely backed up to `~/.dotfiles-backup/` prior to creating symlinks.
