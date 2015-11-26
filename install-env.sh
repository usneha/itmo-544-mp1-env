#!/bin/bash
sudo apt-get update -y

# logging the installation output to installphp file to check for errors, if any
sudo apt-get install -y apache2 git php5 php5-imagick php5-curl mysql-client curl php5-mysql &> /tmp/installphp.txt

#cloning the git repositories 
git clone https://github.com/usneha/itmo-544-mp1-env.git
git clone https://github.com/usneha/itmo-544-mp1.git

sudo mv ./itmo-544-mp1-env/images /var/www/html/images 
sudo mv ./itmo-544-mp1/css /var/www/html/css
sudo mv ./itmo-544-mp1/js /var/wwww/html/js

sudo mv ./itmo-544-mp1/*.php /var/www/html 
sudo mv ./itmo-544-mp1/index.html /var/www/html

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/composerphar.txt

sudo mv vendor /var/www/html &> /tmp/vendor.txt

echo "Hello!" > /tmp/hello.txt

echo "All done installing the required environment" > /tmp/hello.txt
