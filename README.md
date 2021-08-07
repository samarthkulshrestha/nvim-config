# Samarth Kulshrestha's NeoVim configuration

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
