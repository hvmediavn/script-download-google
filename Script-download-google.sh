#/bin/bash
## Author : Hoang Nam
## Last Updated : 30/12/2022
## Company : AZDIG
echo "! Script download google !"
read -p "Nhap ten file can down : " file
read -p "Nhap ID cua googledirver : " idgoogle
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=${idgoogle}' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=${idgoogle}" -O ${file} && rm -rf /tmp/cookies.txt
