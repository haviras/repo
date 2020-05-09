#/bin/bash
#checking dependencies
dpkg -s whois >> /dev/null
if [ $? -eq 0 ]; then
    echo whois OK
else
    sudo apt install whois
fi

dpkg -s pwgen >> /dev/null
if [ $? -eq 0 ]; then
    echo pwgen OK
else
    sudo apt install pwgen
fi

#cheking file  with usernames


if [ -e ./4121/ ]
then
echo "Folder OK"
else (
echo "Creating folder"
mkdir ./4121
)
fi

if [ -e ./4121/passwd.txt ]
then
echo "userlist exist"
else (
echo "creating userlist..."
for (( i=1;i<=20;i++ ))
  do
    echo  "user"$i >> ./4121/passwd.txt
done
)
fi


#creating users

while read LINE; 
do


PASS=$(pwgen -1)

cat /etc/passwd | grep $LINE: >> /dev/null

if [ $? -eq 0 ]; then
    echo "User $LINE exist"
else
echo "Trying to create user $LINE"


sudo mkdir /home/$LINE
sudo useradd -d /home/$LINE -p `mkpasswd $PASS` -s /bin/bash $LINE

	if [ $? -eq 0 ]; then
	    echo "User $LINE has been created"
		touch  ./4121/$LINE.txt
		echo "User: $LINE" > ./4121/$LINE.txt
		echo "Password: $PASS" >> ./4121/$LINE.txt
	#а тут можно какойто MAILTO прикрутить и рассылать по почте файлы
	fi
fi


done < ./4121/passwd.txt

