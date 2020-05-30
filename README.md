dotfiles.git
============
Configuration files for emacs and fish. Use as follows:

```sh
cd $HOME
git clone https://github.com/jinchengJL/dotfiles.git
mv .config/fish .config/fish~
ln -s dotfiles/fish .config/
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
```
