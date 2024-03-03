# mathieunix dotfiles
## Installation
### Packages à installer en premier

fd
```
sudo apt install fd-find
```

fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```


### Shell
Ajouter à la fin du ~/.bashrc : 

```
echo "[ -f ~/.mathieunix_dotfiles/bashrc ] && source ~/.mathieunix_dotfiles/bashrc" >> ~/.bashrc
```
