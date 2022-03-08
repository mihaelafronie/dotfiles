# java version manager
curl -s "https://get.sdkman.io" | bash
source "$HOME/.zshrc"
sdk install java 17.0.0.35.2-amzn
sdk install java 11.0.12.7.2-amzn
sdk default java 17.0.0.35.2-amzn