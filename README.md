# Dotfiles

## Setup

Required installed packages:

- [`bat`](https://github.com/sharkdp/bat): better `cat`
- [`delta`](https://github.com/dandavison/delta): better `diff`
- [`exa`](https://github.com/ogham/exa): better `ls`
- [`fzf`](https://github.com/junegunn/fzf): fuzzy finder
- [`zsh-z`](https://github.com/agkozak/zsh-z): quick folder jumper
- `git`: version control :)
- `nano`: I'm not a vim user, sorry :(
- [`zsh`](https://en.wikipedia.org/wiki/Z_shell): shell
- [`oh-my-zsh`](https://ohmyz.sh/): zsh configuration manager
- [`powerlevel10k`](https://github.com/romkatv/powerlevel10k): zsh theme
- [`distrobox`](https://distrobox.it/): containers manager (sorta, see [#Distrobox](#distrobox))

Files that should be in `dotfiles` folder:

- `.oh-my-zsh`: folder, [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) installation folder
- `.distroboxrc`: [distrobox](https://github.com/89luca89/distrobox) config file
- `.gitconfig`: git config
- `.p10k.zsh`: [powerlevel10k](https://github.com/romkatv/powerlevel10k) config file
- `.z`: [zsh-z](https://github.com/agkozak/zsh-z) cache
- `.zsh_history`: shell history
- `.zshrc`: [zsh](https://www.zsh.org/) config file
- `distrobox-init.sh`: script to setup newly created cloned distrobox containers (see [#Distrobox](#distrobox))
- `pyenv-init.sh`: script to create new python virtual environments (see [#Python-venv](#python-venv))

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

## Distrobox

I try to keep my installations as clean as possible, so I use [distrobox](https://distrobox.it) to separate development environments.

- To create containers based on `fedora` or `debian` images, clone the two already set up distroboxes (with required packages installed):

  `distrobox create -c [fedora | debian] -n <container_name>`

Distrobox will take care of copying dotfiles and creating a custom separated home directory (thanks to `.distroboxrc` config).

## Python venv

Python installation on the host machine is kept to the minimum, `pip` is not even installed.
Each time dependencies are needed, a new virtual environment is created with `pyenv-init.sh` script, aliased in `.zshrc` to `venv`.

All python environments are stored in `~/pyenvs` folder, and this path is used to configure editors and LSP (`python.venvFolders` in VSCode), allowing it to be selected by jupyter notebooks.
A symlink to the current folder is then created.

- To create a new python environment:

  `venv <env_name>`

- To activate the environment (from the folder containing the symlink):

  `source venv/bin/activate`

- To deactivate the environment:

  `deactivate`
