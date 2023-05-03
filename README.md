<div align="center">
<h1>nvim config</h1>

samarth kulshrestha

![release version](https://img.shields.io/github/v/release/samarthkulshrestha/nvim-config?color=%23a039fa&include_prereleases&style=for-the-badge)
![top language](https://img.shields.io/github/languages/top/samarthkulshrestha/nvim-config?color=%234877f7&style=for-the-badge)
![license](https://img.shields.io/github/license/samarthkulshrestha/nvim-config?color=%23f2e85a&style=for-the-badge)
<br>
![pre-release date](https://img.shields.io/github/release-date-pre/samarthkulshrestha/nvim-config?color=%23f76ad4&style=for-the-badge)
![repo size](https://img.shields.io/github/repo-size/samarthkulshrestha/nvim-config?color=%2346d4a0&style=for-the-badge)
<br/><br/><br/>
![nvim-config logo](assets/nv.png)
<br/><br>
</div>

## Introduction

<img src="assets/real_programmers.png" align="right" style="width: 50%" />

This is my [NeoVim](https://neovim.io) configuration. This config uses
[packer.nvim](https://github.com/wbthomason/packer.nvim) for managing plugins.
Refer to the packer readme for installation instructions.

The config is now written in [Lua](https://www.lua.org/) and each section of
the configuration has been divided into separate files, stored inside the
`lua` directory. `init.lua` then sources all of these files.

The old configuration files (both in VimScript and Lua) are stored under the
`old` subdirectory.

![screenshot](assets/screenshot.png)

## Usage

These instructions are for Unix OSes (Linux, MacOS, etc).

-   Make a backup of your current config.

```
mv ~/.config/nvim ~/.config/nvim_old
```

-   Clear the NeoVim cache.

```
rm -rf ~/.local/share/nvim
```

-   Clone this repo in the correct location.

```
git clone https://github.com/samarthkulshrestha/nvim-config.git ~/.config/nvim
```

-   [Install packer.nvim.](https://github.com/wbthomason/packer.nvim#quickstart)

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

-   Open NeoVim and type

```
:PackerInstall
```

And you're done.

## Licence

Licensed under the MIT Licence.

Copyright (c) 2023 Samarth Kulshrestha.
