<p align="center">
  <img src="assets/branding/carsondeb.svg" alt="CarsonDEB logo" width="180">
</p>

<h1 align="center">CarsonDEB</h1>

<p align="center">
  A custom Debian-based Linux distribution built with Debian Live.
</p>

A custom Debian-based Linux distribution project built from the ground up with **Debian Live (`live-build`)**.

CarsonDEB currently targets **Debian 13 (Trixie), amd64** and tracks the official Debian repositories.

## 🚧 Project status

CarsonDEB is an early-stage custom distro, but it now produces a bootable Debian Live ISO through GitHub Actions.

**CarsonDEB has been submitted to [DistroWatch](https://distrowatch.com/) for consideration.**

Current image features:

- Debian 13 Trixie / amd64
- Debian Live / live-build
- XFCE desktop
- **Fish shell**
- NetworkManager
- Firefox ESR
- common CLI and hardware utilities
- **Calamares graphical installer**
- CarsonDEB desktop installer launcher
- initial CarsonDEB branding assets
- official Debian repositories
- Debian security and stable-update repositories
- GitHub Actions ISO builds

The Calamares configuration is intentionally close to the Debian-provided defaults for now. It is a foundation for future CarsonDEB-specific installer branding and workflow customization.

## 🌳 Base

```text
Debian 13 (Trixie)
        │
        ├── Debian Live / live-build
        ├── Linux kernel
        ├── XFCE
        ├── Fish
        ├── Calamares
        └── CarsonDEB customizations
```

## 🎨 Branding

CarsonDEB branding is kept in the repository so it can be reused by the ISO, desktop, installer, and future applications.

```text
assets/
└── branding/
    └── carsondeb.svg          # master repository logo

config/includes.chroot/
├── usr/share/icons/hicolor/scalable/apps/
│   └── carsondeb.svg          # desktop/application icon
├── usr/share/pixmaps/
│   └── carsondeb.svg          # pixmap-compatible variant
└── usr/share/applications/
    └── carsondeb-installer.desktop
```

The SVG versions are intentionally kept as text/vector assets so they can later be converted into PNG, ICO, installer artwork, boot artwork, or other sizes without losing the source logo.

## 📦 Official repositories

CarsonDEB uses Debian's official mirrors:

```text
deb https://deb.debian.org/debian trixie main contrib non-free non-free-firmware
deb https://deb.debian.org/debian trixie-updates main contrib non-free non-free-firmware
deb https://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
```

These are intentionally kept on official Debian infrastructure rather than mixing random third-party repositories into the base image.

## 🧰 Future CarsonDEB Apps

The `apps/` directory is reserved for a future CarsonDEB application catalog/fetch system.

Possible future components include:

- application metadata
- categories
- package/repository information
- curated CarsonDEB applications
- graphical app discovery
- optional app bundles and editions

For now, the base system continues to use Debian's official repositories.

## 🔨 Building locally

A Debian-based build environment is recommended.

Install the build tools:

```bash
sudo apt update
sudo apt install live-build debootstrap squashfs-tools xorriso grub-pc-bin grub-efi-amd64-bin mtools dosfstools
```

Then run the live-build configuration directly from the repository using the same options as the GitHub Actions workflow. The generated ISO appears in the repository directory.

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
├── apps/
│   └── README.md
├── assets/
│   └── branding/
│       └── carsondeb.svg
├── config/
│   ├── includes.chroot/
│   │   ├── etc/apt/sources.list.d/
│   │   │   └── carsondeb.sources
│   │   └── usr/share/
│   │       ├── applications/
│   │       │   └── carsondeb-installer.desktop
│   │       ├── icons/hicolor/scalable/apps/
│   │       │   └── carsondeb.svg
│   │       └── pixmaps/
│   │           └── carsondeb.svg
│   └── package-lists/
│       └── carson.list.chroot
└── README.md
```

## 🧩 Customization roadmap

Planned areas for CarsonDEB include:

- [x] Initial CarsonDEB branding and artwork
- [x] Fish as the default interactive shell
- [x] Calamares installer foundation
- [ ] Custom default XFCE configuration
- [ ] Fully customized Calamares branding and modules
- [ ] CarsonDEB packages
- [ ] Carson package repository
- [ ] CarsonDEB application fetch/catalog system
- [ ] Custom first-boot setup
- [ ] Automated ISO versioning
- [ ] ISO checksums and release publishing
- [ ] Additional architectures

## 🛠️ Philosophy

CarsonDEB starts with a real Debian base instead of trying to reinvent the entire operating system immediately. The goal is to gradually replace and customize components while keeping the underlying system maintainable and compatible with Debian.

**Build it. Break it. Fix it. Ship it. 🐧**
