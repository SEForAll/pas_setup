#!/bin/bash
echo "Sudo? [y/n]"
read sudoChoice
if [[ $sudoChoice = "y" ]]
then
	useradd -m -G docker,sudo $1
else
	useradd -m -G docker $1
fi

echo "Reset Password? [y/n]"
read passChoice
if [[ $passChoice = "y" ]]
then
	passwd -d $1
	passwd -e $1
fi

if [[ ! -d "/home/$1/.ssh" ]]
then
	mkdir /home/$1/.ssh
	chmod 700 /home/$1/.ssh/ 
fi

if [[ -d "/mnt/usb/home/$1/" ]]
then
	echo "Adding Old Key"
	cp /mnt/usb/home/$1/.ssh/authorized_keys /home/$1/.ssh/
fi

echo "Add SSH Key? [y/n]"
read sshChoice
if [[ $sshChoice = "y" ]]
then
	echo "Paste Public Key:"
	read sshKey
	echo "$sshKey" >> /home/$1/.ssh/authorized_keys
fi
chmod 644 /home/$1/.ssh/authorized_keys
chown -R $1 /home/$1/.ssh/	
exit 0
