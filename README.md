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

zoxide
```
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
```

eza
```
sudo apt update
sudo apt install -y gpg
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
```

### Shell
Ajouter à la fin du ~/.bashrc de la ligne qui appelle le fichier custom puis sourcer le bashrc

```
echo "[ -f ~/.mathieunix_dotfiles/bashrc ] && source ~/.mathieunix_dotfiles/bashrc" >> ~/.bashrc
source ~/.bashrc
```
