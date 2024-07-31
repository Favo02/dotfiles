# Dotfiles

## Setup

Required installed packages:

- [`bat`](https://github.com/sharkdp/bat): better `cat`
- [`delta`](https://github.com/dandavison/delta): better `diff`
- [`exa`](https://github.com/ogham/exa): better `ls`
- [`fzf`](https://github.com/junegunn/fzf): fuzzy finder
- `git`: version control :)
- `nano`: I'm not a vim user, sorry :(

Files that should be in `dotfiles` folder:

- `.oh-my-zsh`: folder, [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) installation folder
- `.gitconfig`: git config
- `.p10k.zsh`: [powerlevel10k](https://github.com/romkatv/powerlevel10k) config file
- `.z`: [zsh-z](https://github.com/agkozak/zsh-z) cache
- `.zsh_history`: shell history
- `.zshrc`: [zsh](https://www.zsh.org/) config file
- `distrobox-setup`: script to setup newly created distrobox containers

All these files needs a symlink to home folder (`~/`): `ln -f -s /home/<USER>/<PATH_TO_DOTFILES>/<FILE> ~/`

## Usage

Aliases in `.zshrc` (open the config for arguments):

- `ls` to `exa`
- `cat` to `bat`
- `diff` to `delta`
- `xdg-open` to `open`

Useful shell shortcuts:

- `<CTRL-T>`: search file using `fzf`
- `<CTRL-R>`: reverse history search
- `<CTRL-S>`: forward history search
- `z <folder>`: navigate to folder skipping all `cd`s (if already been there)
