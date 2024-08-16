#install php myadmin  termux


pkg update 

pkg install proot-distro

termux-setup-storage

pkg install php mariadb phpmyadmin -y


mysqld_safe

#open new session on termux

mysql -u root

GRANT ALL PRIVILEGES on *.* to 'root'@'localhost' IDENTIFIED BY '   ';


cd ..

cd usr/share/phpmyadmin

#Start phpmyadmin 

php -S  localhost:8080



