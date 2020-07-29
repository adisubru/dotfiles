# Dotfiles
[screenshots](https://imgur.com/a/hlQwaR9)
![alt text](https://imgur.com/DEpBmg1.png)



## Getting the dotfiles
The repo uses a git bare repo, with it's working directory at `$HOME`. So cloning the repo properly will setup all files in the correct location, and requires no extra work.
 1. add this alias to your `.bashrc` for easy operation
```
alias gitdotf='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```
2. ignore repo to avoid some recursion
```
echo "$HOME/dotfiles" >> .gitignore
```
3. clone the bare repo, and ignore untracked files
```
git clone --bare https://github.com/LaughingBudda/dotfiles.git $HOME/dotfiles
gitdotf config --local status.showUntrackedFiles no
```
4.  checkout the content to your `$HOME` directory
```
gitdotf checkout
```
## General Setup
- install the following suckless programs, for general functionality
  - window manager, [dwm](https://github.com/LaughingBudda/dwm)
  - terminal emulator, [st](https://github.com/LaughingBudda/st)
  - lockscreen, [slock](https://tools.suckless.org/slock/)
  - launcher, [dmenu](https://tools.suckless.org/dmenu/)
- [dunst](https://github.com/dunst-project/dunst) for notifications
- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) for glyph support(I use `iosevka nerd fonts`) 
and [IPAfonts](https://www.archlinux.org/packages/?name=otf-ipafont) for japanese fonts.
- [pywal](https://github.com/dylanaraps/pywal) for setting up the color-schemes
- [mupdf](https://mupdf.com/docs/manual-mupdf-gl.html) for `vim-tex` previews
- make sure `.local/bin` is in you `$PATH` for volume,  brightness and dmenu scripts to function properly
- make sure your `.bash_profile/.profile` sources the `.bashrc` to have the environment variables set for the login shell.
