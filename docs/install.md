# Univew Install


1. Install Docker docker and docker-compose on your targeted docker host. An example is to follow: https://docs.docker.com/engine/install/

2. Prepare MySql database or Maria Db

To do so, an example is to install on an Ubuntu server with command: sudo apt install mysql-server. Once MySql is up, create databse:

CREATE DATABASE uniview; CREATE USER 'uniview'@'%' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON uniview.* TO 'uniview'@'%'; exit

3. Gather your OpenStack user access credentials, for example

"keystone_host": "192.168.1.11",
"keystone_port": "5000",
"os_auth_user": "uniview",
"os_auth_pass": "pass",
"os_auth_project": "uniview",


4. Prepare your codes:
git clone https://github.com/ComputingStack/Uniview-OpenStack-Portal.git
cd ~/Uniview-OpenStack-Portal/docker-compose

edit conf/univew.json with necessary above database and openstack access

5. bring service up

docker-compose up

6. Access your service at: http://host_ip:3006/



