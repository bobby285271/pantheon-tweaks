# Pantheon Tweaks
A system settings app for the Pantheon Desktop that lets you easily and safely customise your desktop's appearance.

![sample](data/screenshot.png)

## Installation
Pantheon Tweaks supports the following versions of elementary OS:

  elementary OS Version | Supported?      |
  --------------------- | --------------- |
  0.4 Loki              | ❌
  5 Juno                | ❌
  5.1 Hera              | ❌
  6 Odin                | ✅
  6.1 Jólnir            | ✅
  7.0 / 7.1 Horus       | ✅

For users on elementary OS Hera or below, please use [elementary Tweaks](https://github.com/elementary-tweaks/elementary-tweaks) instead.

It should also work on other distirbutions using Pantheon, thanks to Flatpak.

### For Users
We're working on submitting Pantheon Tweaks to Flathub for easier installation. You wll be able to download and install Pantheon Tweaks from Flathub soon, hold on!

<!-- TODO Replace with these lines when it's available on Flathub -->
<!--
You can download and install Pantheon Tweaks from Flathub:

[<img src="https://flathub.org/assets/badges/flathub-badge-en.svg" width="160" alt="Download on Flathub">](https://flathub.org/apps/io.github.pantheon_tweaks.pantheon-tweaks)

You can launch it from the app launcher after installation.

> [!TIP]
> Pantheon Tweaks (and its ancestor, elementary Tweaks) was a plug of System Setting and we'd provided it through PPA for a long time, but it's an independent Flatpak app since 2.0.0.
-->

### For Developers
If you would like to install Pantheon Tweaks from source code, clone this repository and then run the following command:

```
sudo apt install flatpak-builder
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak-builder build --user --install --force-clean --install-deps-from=flathub io.github.pantheon_tweaks.pantheon-tweaks.yml
```

## Special Thanks
This repository is a fork of the [original elementary-tweaks](https://launchpad.net/elementary-tweaks) and could not have been done without the work of its [authors](AUTHORS) Michael P. Starkweather, Michael "Versable" Langfermann, PerfectCarl, Marvin Beckers and additional [contributors](CONTRIBUTORS).
