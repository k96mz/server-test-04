sudo apt -y update
sudo apt -y upgrade
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -    
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y autoconf automake cmake code git libsqlite3-dev libtool raspberrypi-kernel-headers nodejs parallel pdal python-gdal ruby sqlite3 tmux unar xrdp yarn zip 
sudo service xrdp restart
sudo yarn global add browserify pm2 rollup
git clone https://github.com/ubukawa/b-quartz
cd b-quartz; npm install; cd ..

##The following is for maplibre. there will be js and css in dist.
##It seems that you may need to install typescript. (RaspberryPi with low memory may not work.). The followings did not work.
#npm install -g typescript
#git clone https://github.com/maplibre/maplibre-gl-js
#cd maplibre-gl-js; npm install; npm install node -g node-gyp; npm run build-prod-min; npm run build-css; cd ..