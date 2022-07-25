# Univew Install with docker and docker-compose


1. Install Docker docker and docker-compose on your targeted docker host. An example is to follow: https://docs.docker.com/engine/install/

2. Prepare MySql database or Maria Db

To do so, an example is to install on an Ubuntu server with command: sudo apt install mysql-server. Once MySql is up, create databse:

CREATE DATABASE uniview; CREATE USER 'uniview'@'%' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON uniview.* TO 'uniview'@'%'; exit

Test out if mysql can be acessible, execute command from docker host:
mysql -h host -u uniview -ppassword

3. Gather your OpenStack user access credentials, for example

"keystone_auth_url": "http://192.168.1.11:3539",
"os_interface_type": internal
"os_auth_user": "uniview",
"os_auth_pass": "pass",
"os_auth_project": "uniview",

In above credentials:

"keystone_auth_url" is keystone host address used to communicate with keystone. It can be either admin, internal or public endpoints in the format of above. It does support both https and http

"os_interface_type" is the type of endpoint the uniview is intended to use to communicate with other OpenStack backends, and takes values of "public", ""such as nova and cinder. The choice of interface type need based on the strategy of your clouds and bottom line network of the selected endpoints is accessible from the host of Uniview. In most cases, public provides best accessibility, but internal and admin may be more efficient as with internal network. 


4. Prepare your install environment by cloing current repo:

git clone https://github.com/ComputingStack/Uniview-OpenStack-Portal.git

cd ~/Uniview-OpenStack-Portal/docker-compose

edit conf/univew.json with necessary above database and openstack access info at step 2 and 3

5. bring service up

docker-compose up

6. Access your service at: http://host_ip:3006/



