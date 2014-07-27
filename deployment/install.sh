echo "Updating system"
sudo apt-get -qq update
sudo apt-get -yqqf upgrade

# Ruby
command -v ruby1.8 > /dev/null
if [ $? -eq 0 ]; then
    echo "Uninstalling Ruby 1.8"
    sudo apt-get remove -yqq libruby1.8 ruby1.8 ruby1.8-dev rubygems1.8
fi
sudo apt-get -yqq install ruby1.9.3

# Node.js
command -v node > /dev/null
if [ $? -ne 0 ]; then
    echo "Installing Node.js"
    sudo apt-get -yqq install nodejs
fi

# NPM
command -v npm > /dev/null
if [ $? -ne 0 ]; then
    echo "Installing NPM"
    sudo apt-get -yqq install npm
fi