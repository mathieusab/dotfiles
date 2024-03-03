# mathieunix dotfiles
## Installation
### Packages à installer en premier

fd
```
sudo apt install fd-find && ln -s $(which fdfind) ~/.local/bin/fd
```

fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```

mc (Midnight Commander)
```
sudo apt install mc
```

### Shell
Ajouter à la fin du ~/.bashrc de la ligne qui appelle le fichier custom puis sourcer le bashrc

```
echo "[ -f ~/.mathieunix_dotfiles/bashrc ] && source ~/.mathieunix_dotfiles/bashrc" >> ~/.bashrc
source ~/.bashrc
```
