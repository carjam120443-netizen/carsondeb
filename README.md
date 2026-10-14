<!-- Retired project notice -->
> [!WARNING]
> **Project retired — no longer maintained.**
>
> CarsonDEB is an old experiment and has been retired. I will not be updating it, fixing bugs, or publishing new versions. Existing builds, workflows, package lists, and instructions are kept for historical reference and may be outdated or stop working.
>
> Want a newer Carson Linux project instead? Check out **[CarsonOS](https://github.com/carjam120443-netizen/carsonOS)**, my Arch-based distro project. If you want a newer working version or a feature inspired by CarsonDEB, please create an issue in CarsonOS and explain what you need.

---

# Historical CarsonDEB documentation

The sections below describe the project as it existed before retirement. Roadmap items are historical and should not be interpreted as promises of future development.

<p align="center">
  <img src="assets/branding/carsondeb.svg" alt="CarsonDEB logo" width="180">
</p>

<h1 align="center">CarsonDEB</h1>

<p align="center">
  A custom Debian-based Linux distribution built with Debian Live.
</p>

CarsonDEB was a custom Debian-based Linux distribution project built with **Debian Live (`live-build`)**. It targeted **Debian 13 (Trixie), amd64** and tracked the official Debian repositories.

## 🚧 Historical project status

CarsonDEB reached the point of producing a bootable Debian Live ISO through GitHub Actions. **Development has ended.** The information below is retained for reference only.

**CarsonDEB was submitted to [DistroWatch](https://distrowatch.com/) for consideration.**

Historical image features:

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

The Calamares configuration was intentionally close to Debian-provided defaults at the time.

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

CarsonDEB branding was kept in the repository for reuse by the ISO, desktop, installer, and potential applications.

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

The SVG versions are text/vector assets that can be converted into other formats without losing the source logo.

## 📦 Historical repository configuration

CarsonDEB used Debian's official mirrors:

```text
deb https://deb.debian.org/debian trixie main contrib non-free non-free-firmware
deb https://deb.debian.org/debian trixie-updates main contrib non-free non-free-firmware
deb https://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
```

These entries are shown as historical documentation and may no longer be suitable for a current build.

## 🧰 Planned apps (never completed)

The `apps/` directory was reserved for a possible CarsonDEB application catalog/fetch system. Ideas included application metadata, categories, package information, graphical discovery, and optional app bundles. These plans are not active.

## 🔨 Historical local build notes

A Debian-based build environment was recommended. The original tool list was:

```bash
sudo apt update
sudo apt install live-build debootstrap squashfs-tools xorriso grub-pc-bin grub-efi-amd64-bin mtools dosfstools
```

Build instructions may be incomplete or outdated and are not maintained.

## 🤖 Historical GitHub Actions

The workflow was configured to build an ISO on pushes to `main`, pull requests targeting `main`, or manual runs. The resulting artifact was named:

```text
carsondeb-amd64-iso
```

Workflow behavior is not guaranteed.

## 📁 Repository layout

```text
carsondeb/
├── .github/workflows/build.yml
├── apps/README.md
├── assets/branding/carsondeb.svg
├── config/
│   ├── includes.chroot/
│   │   ├── etc/apt/sources.list.d/carsondeb.sources
│   │   └── usr/share/
│   │       ├── applications/carsondeb-installer.desktop
│   │       ├── icons/hicolor/scalable/apps/carsondeb.svg
│   │       └── pixmaps/carsondeb.svg
│   └── package-lists/carson.list.chroot
└── README.md
```

## 🧩 Historical customization roadmap

These checkboxes reflect old project notes only and are not a current development roadmap.

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

## 🛠️ Historical philosophy

CarsonDEB started with a real Debian base rather than trying to reinvent an entire operating system immediately.

**Build it. Break it. Fix it. Ship it. 🐧**

---

For a newer Carson Linux project, visit **[CarsonOS](https://github.com/carjam120443-netizen/carsonOS)**. To request a feature inspired by CarsonDEB, create an issue in that repository.
