#!/bin/bash
yum install httpd -y
mkdir /var/www/html/images
aws s3 cp s3://acsfinalgroup12dev/images/ /var/www/html/images --recursive
echo "<HTML>"  >  /var/www/html/index.html
echo "<HEAD>"  >>  /var/www/html/index.html
echo "<TITLE>Group 12 Website</TITLE>"  >>  /var/www/html/index.html
echo "</HEAD>"  >>  /var/www/html/index.html
echo "<BODY>"  >>  /var/www/html/index.html
echo "<H1>Brought to you by Seneca and ${prefix}, hosted on $(hostname -f) in ${env} environment.</H1>"  >>  /var/www/html/index.html
echo "<table align="center">" >> /var/www/html/index.html
echo "  <tr>"  >>  /var/www/html/index.html
echo "		<td><img src="/images/sankar.jpg"></td>"  >>  /var/www/html/index.html
echo "		<td><ul>" >>  /var/www/html/index.html
echo "    <h2><li>${name1}</li></h2>" >>  /var/www/html/index.html
echo "    <h2><li>${name2}</li></h2>" >>  /var/www/html/index.html
echo "    <h2><li>${name3}</li></h2>" >>  /var/www/html/index.html
echo "    </ul></td>" >>  /var/www/html/index.html
echo "		<td><img src="/images/group.jpg"></td>"  >>  /var/www/html/index.html
echo "  </tr>"  >>  /var/www/html/index.html
echo "</table>"  >>  /var/www/html/index.html
echo "</BODY>"  >>  /var/www/html/index.html
echo "</HTML>"  >  /var/www/html/index.html
systemctl start httpd
systemctl enable httpd