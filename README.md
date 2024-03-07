# mathieunix dotfiles
## Installation
### Packages prerequis

fd
```
sudo apt install fd-find && ln -s $(which fdfind) ~/.local/bin/fd
```

fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all
```

mc (Midnight Commander)
```
sudo apt install -y mc
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

bat
```
sudo apt install -y bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
```

stow
```
sudo apt install -y stow
```

### Lancement du script d'installation

```
git clone git@github.com:mathieusab/dotfiles.git ~/dotfiles
chmod +x ~/dotfiles/install.sh
~/dotfiles/install.sh
```
