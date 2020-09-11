echo "Setting up your MacBook"

echo "Creating directories"
mkdir ~/temp ~/bin;

#setting up vim, zsh and aliases
echo "Updating dot files and aliases"
cp .vimrc .zshrc ~;
cp zsh.sh ~/bin

#install homebrew
echo "Installing package manger"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Setting up terminal"
#install zsh and install some plugins
brew install zsh zsh-autosuggestions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install command line tools
echo "Installing command line toold"
brew install git vim node sqlite redis travis jq curl bat tree
brew tap heroku/brew
brew install heroku

#install applications
echo "Installing applications"
brew cask install visual-studio-code

# Applications need to be manually installed 
# mindnode
# zoom

# make zsh default shell
echo "Setting default shell"
chsh -s /zsh;


echo "\n\n----------------\n Done..."
