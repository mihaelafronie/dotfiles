echo "==> 🔗 Symlinking dotfiles to ~/"

ln -s ~/dotfiles/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/dotfiles/.aliases ~/.aliases
ln -s ~/dotfiles/dotfiles/.functions ~/.functions
ln -s ~/dotfiles/dotfiles/.hushlogin ~/.hushlogin
ln -s ~/dotfiles/dotfiles/startship.toml ~/.config/starship.toml

# Add Homebrew Zsh to accepted shells if not present
if ! grep -Fxq "$(which zsh)" /etc/shells > /dev/null 2>&1; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
fi

# Set Homebrew Zsh as default shell
chsh -s "$(which zsh)"

git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/zsh-git-prompt
