# This script is for Ubuntu Ver18.04.
#!/bin/sh

PATH_DAPPS=~/dapps
PATH_EXPRESS=$PATH_DAPPS/web/by_express

echo "\nDone?"
echo "Set up node.js and npm."
echo " - sh ./zombietimes/setup0040_nodeJs/ubuntuCmd_setupNodeJs.sh"
echo ""
echo "[Enter] to continue."
echo "\n"
read Wait;

echo "\n<Setup>"
echo "Set up express."
echo "\n"
mkdir -p $PATH_EXPRESS
cd $PATH_EXPRESS
npm init
npm install express --save

echo "\n<Setup>"
echo "Set up express-generator."
echo "\n"
cd $PATH_EXPRESS
sudo apt-get install node-express-generator -y
npm install express-generator --save
express project000
cd $PATH_EXPRESS/project000
npm install

echo "\n<Help>"
echo "Run the command below to access to the server."
echo " node.js"
echo " - cd $PATH_EXPRESS/project000"
echo " - node ./bin/www"
echo " Browser"
echo " - http://127.0.0.1:3000"
echo ""
echo "[Enter] to continue."
echo "\n"
read Wait;



