# 🐧 CarsonDEB

A custom Debian-based Linux distribution project built from the ground up with **Debian Live (`live-build`)**.

CarsonDEB currently targets **Debian 13 (Trixie), amd64**. Debian 13.7 is the current stable point release as of September 12, 2026; the build tracks the `trixie` repositories so newly published package updates are pulled during the build.

## 🚧 Project status

CarsonDEB is an early-stage custom distro. The repository now contains the basic pieces needed to build a bootable Debian Live ISO:

- Debian Live `live-build` configuration
- amd64 ISO-hybrid output
- XFCE desktop
- NetworkManager
- Firefox ESR
- common CLI and hardware utilities
- Debian installer integration
- official Debian repositories
- Debian security and stable-update repositories
- GitHub Actions ISO builds

## 🌳 Base

```text
Debian 13 (Trixie)
        │
        ├── Debian Live / live-build
        │
        ├── Linux kernel
        │
        ├── XFCE
        │
        └── CarsonDEB customizations
```

## 📦 Official repositories

CarsonDEB uses Debian's official mirrors:

```text
deb https://deb.debian.org/debian trixie main contrib non-free non-free-firmware
deb https://deb.debian.org/debian trixie-updates main contrib non-free non-free-firmware
deb https://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
```

These are intentionally kept on official Debian infrastructure rather than mixing random third-party repositories into the base image.

## 🔨 Building locally

A Debian-based build environment is recommended.

Install the build tools:

```bash
sudo apt update
sudo apt install live-build debootstrap squashfs-tools xorriso grub-pc-bin grub-efi-amd64-bin mtools dosfstools
```

Then run:

```bash
git clone https://github.com/carjam120443-netizen/carsondeb.git
cd carsondeb
sudo lb clean --purge || true
sudo sh auto/config
sudo sh auto/build
```

The generated ISO should appear in the repository directory.

## 🤖 GitHub Actions

Every push to `main`, pull request targeting `main`, or manual workflow run builds the ISO in GitHub Actions.

The workflow uploads the resulting ISO as a workflow artifact named:

```text
carsondeb-amd64-iso
```

## 📁 Repository layout

```text
carsondeb/
├── .github/
│   └── workflows/
│       └── build.yml
├── auto/
│   ├── build
│   └── config
├── config/
│   ├── includes.chroot/
│   │   └── etc/apt/sources.list.d/
│   │       └── carsondeb.sources
│   └── package-lists/
│       └── carson.list.chroot
└── README.md
```

## 🧩 Customization roadmap

Planned areas for CarsonDEB include:

- [ ] CarsonDEB branding and artwork
- [ ] Custom default XFCE configuration
- [ ] CarsonDEB packages
- [ ] Carson package repository
- [ ] Custom first-boot setup
- [ ] Custom installer branding
- [ ] Automated ISO versioning
- [ ] ISO checksums and release publishing
- [ ] Additional architectures

## 🛠️ Philosophy

CarsonDEB starts with a real Debian base instead of trying to reinvent the entire operating system immediately. The goal is to gradually replace and customize components while keeping the underlying system maintainable and compatible with Debian.

**Build it. Break it. Fix it. Ship it. 🐧**
