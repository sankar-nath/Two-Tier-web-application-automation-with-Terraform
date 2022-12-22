#!/bin/bash
yum install httpd -y

echo "<HTML>"  >  /var/www/html/index.html
echo "<HEAD>"  >>  /var/www/html/index.html
echo "<TITLE>Group 12 Website</TITLE>"  >>  /var/www/html/index.html
echo "</HEAD>"  >>  /var/www/html/index.html
echo "<BODY BGCOLOR="FFFFFF">"  >>  /var/www/html/index.html
echo "<H1>Brought to you by Seneca and ${prefix}, hosted on $(hostname -f) in ${env} environment.</H1>"  >>  /var/www/html/index.html

systemctl start httpd
systemctl enable httpd