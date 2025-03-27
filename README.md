# Nerd Fonts Installer for Fedora 🐧

This script installs a curated list of [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) on Fedora using sparse Git checkout to save space and time.

## ✅ Fonts Included

The following fonts will be installed:

- BlexMono
- CommitMono
- D2Coding
- FiraCode
- Hack
- JetBrainsMono
- Meslo
- Noto
- ProFont
- SourceCodePro
- ShureTechMono
- SpaceMono
- Terminess
- UbuntuMono
- UbuntuSans

## 📦 Prerequisites

Make sure the following tools are installed:

```bash
sudo dnf install git fontconfig
```

## 🚀 Installation

1. **Download the script**

```bash
curl -O https://raw.githubusercontent.com/loadedk/nerd-font-fedora-script/main/nerd-font-installer.sh
chmod +x nerd-font-installer.sh
```

2. **Run the script**

```bash
./nerd-font-installer.sh
```

This will:

- Clone the Nerd Fonts repo (shallow and sparse)
- Install only the selected fonts
- Rebuild the local font cache

## 📁 Fonts Location

Fonts will be installed to:

```
~/.local/share/fonts/
```

To install system-wide instead, you'll need to adjust permissions and paths in the script.

## 🔄 Updating Fonts

To update installed fonts later:

```bash
cd ~/nerd-fonts
git pull
./install.sh <FontName>
fc-cache -fv
```

## 🛠 Repository

📂 GitHub: [github.com/loadedk/nerd-font-fedora-script](https://github.com/loadedk/nerd-font-fedora-script)

## ❤️ Credits

- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) by Ryan L McIntyre  
- Script customized for Fedora by [@loadedk](https://github.com/loadedk)

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

**Enjoy your beautiful terminal!**
```
Tested with Fedora 41 Workstation. Should work with any linux that uses ~/.local/share/fonts or change that directory to suit your needs.
