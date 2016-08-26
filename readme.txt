
## 1. Install VIM

### On Linux (Debian-like)

```bash
sudo apt-get update
sudo apt-get install vim vim-runtime vim-scripts
```

### On Mac

``` bash
brew update
brew install vim
```

## 2. Install patched fonts (Powerline)

### On linux (Again Debian-like)

```bash
$ mkdir ~/.fonts
$ cd ~/.fonts
```
Download powerline fonts with:

```bash
$ git clone https://github.com/Lokaltog/powerline-fonts
```

or

```bash
$ wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
$ wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
```

then

```bash
$ mkdir -p ~/.config/fontconfig/conf.d/
$ mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

$ fc-cache -vf ~/.fonts/
```

### On Mac

```bash
$ git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh
```

Set a powerline patched font like `Meslo LG L Regular for Powerline` as your terminal font.

## 3. Copy vimrc

```
$ cp vimrc ~/.vimrc
```

## 4. Install Vundle and addons

```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Once downloaded install pluguns/addons with:

```bash
$ vim +PluginInstall +qall
```
