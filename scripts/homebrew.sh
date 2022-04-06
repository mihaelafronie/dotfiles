echo "Installing homebrew ..."

brew update

# Install GNU core utilities (those that come with OS X are outdated).
brew install coreutils
ln -sv /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Replace system curl
brew install curl

# Install zsh
brew install zsh
brew install zplug
brew install starship

brew install python3
brew install neovim
pip3 install neovim
pip3 install pynvim

# fzf
brew install fzf
yes | /usr/local/opt/fzf/install

brew install git
brew install scmpuff

# Install more recent versions of some OS X tools.
brew install grep

# Install other useful binaries.
brew install go
brew install python

brew cleanup
