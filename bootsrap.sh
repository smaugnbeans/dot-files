echo "========================================================================="
echo "Bootstrapping dot-files..."
echo "========================================================================="


echo "========================================================================="
echo "Installing pip"
echo "========================================================================="
pip install -U pip setuptools


echo "========================================================================="
echo "Installing homebrew - postgres, heroku"
echo "========================================================================="
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install postgres
brew services start postgres
brew install heroku


echo "========================================================================="
echo "Installing git..."
echo "========================================================================="
apt update
apt --yes install git


echo "========================================================================="
echo "Pulling repo and running setup..."
echo "========================================================================="
cd ~/Documents/CSC/
git clone https://github.com/smaugnbeans/dot-files
cd ~/Documents/CSC/dot-files
