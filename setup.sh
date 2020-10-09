echo "setting up the leptop"

# brew packages
brew install git vim node travis curl bat tree
# heroku cli
brew tap heroku/brew && brew install heroku

# installing zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/zsh-autosuggestions
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh

# installing powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
