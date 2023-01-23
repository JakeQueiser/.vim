### (1) Clone this repo into user home

### (2) Install Vim-Plug
https://github.com/junegunn/vim-plug
On \*nix systems:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### (3) Install Nodejs
One of the plugins, COC, requires a version of node greater than the stable 14 version.

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
