apt-get update
apt-get install -y git-core vim python-setuptools xvfb firefox

# To support Thai in Firefox
# http://xn--vps-gklo2ixdufb5e.blogspot.com/2014/04/firefox-ubuntu.html
apt-get install -y ttf-thai-tlwg xfonts-thai xfonts-thai-etl xfonts-thai-manop xfonts-thai-nectec xfonts-thai-poonlap xfonts-thai-vor
apt-get install -y fonts-tlwg-waree
fc-cache -f -v

easy_install pip

sudo pip install robotframework
# https://github.com/robotframework/Selenium2Library
pip install robotframework-selenium2library
# https://github.com/drobota/robotframework-xvfb
pip install robotframework-xvfb

# Syntax color in vim
# https://github.com/mfukar/robotframework-vim
su vagrant <<'EOF'
git clone git://github.com/mfukar/robotframework-vim.git
mkdir ~/.vim
cd robotframework-vim && cp -R * ~/.vim/
EOF
