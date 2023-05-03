<div align="center">
<h1>nvim config</h1>

samarth kulshrestha

![release version](https://img.shields.io/github/v/release/samarthkulshrestha/nvim-config?color=%23a039fa&include_prereleases&style=for-the-badge)
![code quality](https://img.shields.io/codefactor/grade/github/samarthkulshrestha/nvim-config/main?style=for-the-badge)
![top language](https://img.shields.io/github/languages/top/samarthkulshrestha/nvim-config?color=%234877f7&style=for-the-badge)
<br>
![license](https://img.shields.io/github/license/samarthkulshrestha/nvim-config?color=%23f2e85a&style=for-the-badge)
![pre-release date](https://img.shields.io/github/release-date-pre/samarthkulshrestha/nvim-config?color=%23f76ad4&style=for-the-badge)
![repo size](https://img.shields.io/github/repo-size/samarthkulshrestha/nvim-config?color=%2346d4a0&style=for-the-badge)
<br/><br/><br/>
![nvim-config logo](assets/nv.png)
<br/><br>
</div>

## Introduction

![xkcd comic](assets/real_programmers.png)

Here is my [NeoVim](https://neovim.io) configuration.
This config uses [vim-plug](https://github.com/junegunn/vim-plug) for managing plugins.
Refer to the vim-plug readme for instructions.

And yes the config is all one long-ass file,
but it is divided into sections,
it is working fine for me right now,
might organise it later.

## Usage

These instructions are strictly for Unix OSes (Linux, MacOS, etc.),
though there still might be some differences.
If you use Windows, you're on your own mate,
I'm sorry, just look up where to place the config files
for Vim/NeoVim and you'll hopefully be all set.

![screenshot](assets/screenshot.png)

### With NeoVim

-   Make a backup of your current config

```
mv ~/.config/nvim ~/.config/nvim_old
```

-   Clone this repo in the correct location

```
git clone https://github.com/samarthkulshrestha/nvim-config.git ~/.config/nvim
```

-   Install vim-plug. [Instructions for NeoVim](https://github.com/junegunn/vim-plug#neovim).

-   Open NeoVim and type

```
:PlugInstall
```

And you're done.

### With [Vim](https://www.vim.org)

-   Make a backup of your current config

```
mv ~/.vimrc ~/.vimrc_old
```

-   Clone this repo, and copy the config file in the correct location

```
cd ~/Downloads
git clone https://github.com/samarthkulshrestha/nvim-config.git
cp ~/Downloads/nvim-config/init.vim ~/.vimrc
```

-   Install vim-plug in this directory. [Instructions for Vim](https://github.com/junegunn/vim-plug#vim).

-   Open Vim and type:

```
:PlugInstall
```

And you're done.

## Licence

Licensed under the DO WHATEVER THE FUCK YOU WANNA DO public licence.

(c) Samarth Kulshrestha, 2021
