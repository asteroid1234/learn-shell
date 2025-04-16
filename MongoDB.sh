cp mongo.repo /etc/yum.repos.d/mongo.repo

#Install MongoDB
dnf install mongodb-org -y 

#127.0.0.1 to 0.0.0.0 in /etc/mongod.conf
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf

#Start & Enable MongoDB Service
systemctl enable mongod 
systemctl start mongod 

