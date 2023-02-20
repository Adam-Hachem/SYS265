#secure-ssh.sh
#author Adam-Hachem
#Creates a new ssh user using $1 parameter
#Adds a public key from the local repo or curled from the remote repo
#Removes root's ability to ssh in
sudo useradd -m -d /home/$1 -s /bin/bash $1
sudo mkdir /home/$1/.ssh
sudo cp /home/adam/SYS265/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh
