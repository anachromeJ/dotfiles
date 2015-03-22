dotfiles.git
============
This is a set of configuration files used for emacs, bash and zsh. Forked and personalized
from https://github.com/startup-class/dotfiles

Clone this and configure your development environment as follows:

```sh
cd $HOME
git clone https://github.com/jchli/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sb dotfiles/.zshrc .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
```

If developing with JavaScript or ruby, see also http://github.com/jchli/setup to install prerequisite
programs. If all goes well, in addition to a more useful prompt, now you can
do `emacs -nw hello.js` and hitting `C-c!` to launch an interactive SSJS
REPL, among many other features. 
