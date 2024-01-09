REPO="https://raw.githubusercontent.com/arismaramar/freepremium/main/"
wget ${REPO}menu.zip
unzip menu.zip
mv menu/* /usr/local/sbin
chmod +x /usr/local/sbin/*
mv -f menu/* /usr/bin
rm -rf menu
rm -rf menu.zip
