### (1) Clone this repo into user home

### (2) Install Vim-Plug
https://github.com/junegunn/vim-plug
On \*nix systems:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### (3) Install Nodejs
LSP requires a version of node greater than the stable 14 version.

For security purposes, installing Node via NVM (node version manager) will ensure NPM packages are kept in user space.

#### NVM installation (Arch linux)
1. Download from AUR and make the package (https://aur.archlinux.org/nvm.git)
2. Append the following to your bash/zsh profile by running:
```
 echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
```
3. Reload your shell
4. Install the latest version of Node by running:
```
nvm install node
```

### (4) Open vim and run the command:
```
:PlugInstall
```

### (5) Git setup
Enter these commands:
```
git config --global core.editor vim
git config --global merge.tool vimdiff
git config --global merge.conflictstyle diff3
git config --global mergetool.prompt false
git config --global mergetool.keepBackup false
```

### (6) Notes on CTRL-Space
| Key | Action                                                 |
| --- | -----------------------------------------------------  |
| `h` | Toggle Buffer List (aka `H`ome List)                   |
| `H` | Jump to Buffer List (aka `H`ome List) with Search Mode |
|     | a - all mode                                           |
|     | f - detatch buffer                                     |
|     | F - delete buffer                                      |
| `o` | Toggle File List (aka `O`pen List)                     |
| `O` | Jump to File List (aka `O`pen List) with Search Mode   |
| `l` | Toggle Tab List (aka `L`ists List)                     |
| `L` | Jump to Tab List (aka `L`ists List) with Search Mode   |
|     | f - collect foreign buffers into a tab                 |
| `w` | Toggle `W`orkspace List                                |
| `W` | Jump to `W`orkspace List with Search Mode              |
| `b` | Toggle `B`ookmark List                                 |
| `B` | Jump to `B`ookmark List with Search Mode               |
