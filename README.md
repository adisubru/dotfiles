# Dotfiles
dotfiles for my personal linux setup

## Installation
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
### Additional eye-candy
get the `iosevka nerd fonts` and `pywal`
