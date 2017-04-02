# vimrc
vim configuration

# powerline install
- `git clone https://github.com/powerline/fonts.git`
- `cd fonts`
- `./install.sh`

# Clang Install
- `sudo apt-get install libclang-dev`
- `sudo apt-get install cmake`
- `sudo apt-get install python-dev`

# Bundle Install
- `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
- `cd ~/.vim/bundle/`
- `git clone --recursive git://github.com/Valloric/YouCompleteMe`
- :BundleInstall
- `cd ~/.vim/bundle/YouCompleteMe`
- `./install.py --clang-completer`
- `sudo apt-get install exuberant-ctags`

