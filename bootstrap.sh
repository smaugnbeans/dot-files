echo "========================================================================="
echo "Bootstrapping dot-files..."
echo "========================================================================="


echo "========================================================================="
echo "Installing homebrew -> heroku"
echo "========================================================================="
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing heroku"
echo "========================================================================="
brew tap heroku/brew && brew install heroku

echo "Installing pyenv and python"
echo "========================================================================="
brew install pyenv
echo "*************************************************************************"
echo "TODO: manage python versions with pyenv"
echo "*************************************************************************"


echo "========================================================================="
echo "Installing git..."
echo "========================================================================="
apt update
apt --yes install git


echo "========================================================================="
echo "Pulling repo and running setup..."
echo "========================================================================="
cd ~/Documents/admin/
git clone https://github.com/smaugnbeans/dot-files
cd ~/Documents/admin/dot-files
chmod +x setup.sh
./setup.sh
