
# Steps to get my vim addons installed


sudo apt-get install vim vim-runtime vim-scripts vim-pathogen vim-rails vim-addon-manager

vim-addons install rails colors-sampler-pack pathogen


# tcomment

vim ~/.vim/installers/tcomment.vba


cd ~/.vim/bundle

# Nerdtree

git clone https://github.com/scrooloose/nerdtree.git


echo Abrir vim y ejecutar el comando :Helptags


# fugitive

git clone git://github.com/tpope/vim-fugitive.git

vim -u NONE -c "helptags vim-fugitive/doc" -c q


# airline
git clone https://github.com/bling/vim-airline

echo Abrir vim y ejecutar el comando :Helptags

mkdir ~/.fonts
cd ~/.fonts
# git clone https://github.com/Lokaltog/powerline-fonts
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

fc-cache -vf ~/.fonts/
