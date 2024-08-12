#Install termux maraidb




pkg update 


pkg install proot-distro 




proot-distro list


proot-distro install fedora


proot-distro login fedora 


exit 


pkg install mariadb


#Run mariadb


mysqld_safe


mysql - u root


GRANT ALL PRIVILEGES on *.* to 'root'@'localhost' IDENTIFIED BY '   ';




FLUSH PRIVILEGES;






mysql - u root - p



