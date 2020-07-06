# Dotfiles
[screenshots](https://imgur.com/a/hlQwaR9)
![alt text](https://imgur.com/DEpBmg1.png)



## Getting the dotfiles
the repo usees a git bare repo, with it's working directory ar `$HOME`. So cloneing the repo properly will setup all files in the correct location, and requires no extra work.
 1. add this alias to your `.bashrc` for easy operation
```
alias gitdotf='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```
2. may need to ignore the git repo itself?
```
echo "$HOME/dotfiles" >> .gitignore
```
3. clone the bare repo
```
git clone --bare https://github.com/LaughingBudda/dotfiles.git $HOME/dotfiles
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
- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) for glyph support. I use `iosevka nerd fonts`
- [pywal](https://github.com/dylanaraps/pywal) for setting up the colorschemes
- [mupdf](https://mupdf.com/docs/manual-mupdf-gl.html) for `vim-tex` previews
- make sure `.local/bin` is in you `$PATH` for volume,  brighness and dmenu scripts to function properly
- export the `SUDO_ASKPASS` variable in `~/.profile`, if using a non-interactive shell to launch `dwm` and hence `dmenu` (in my case `LightDM`).
If not, you can simple do it in the `~/.bashrc`. (also get the dmenu password patch & add `-P` flag to the `dmpass` script for safety)
