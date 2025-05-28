# Univew Install with docker and docker compose

Uniview Core and Collector can be installed by docker-compose. When first time booting those, before the Collector is booted Uniview Core must be up and ready, afterward to boot collector. As long as database is prepared (by Core), all late booting has no order constraint. 

1. Install Docker docker and docker-compose on your targeted docker host. An example is to follow: https://docs.docker.com/engine/install/
 

2. Prepare MySql database or Maria Db

To do so, an example is to install on an Ubuntu server with command: 
```sudo apt install mysql-server. Once MySql is up, create databse:

CREATE DATABASE uniview;
CREATE USER 'uniview'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON uniview.* TO 'uniview'@'%';
exit
```
Test out if mysql can be acessible, execute command from docker host:

```mysql -h host -u uniview -ppassword
```

3. Gather your OpenStack user access credentials, for example

```
"keystone_auth_url": "http://192.168.1.11:5000/v3",
"os_interface_type": internal
"os_auth_user": "uniview",
"os_auth_pass": "pass",
"os_auth_project": "uniview",
```

In above credentials:

"keystone_auth_url" is keystone host address used to communicate with keystone. It can be either admin, internal or public endpoints in the format of above. It does support both https and http

"os_interface_type" is the type of endpoint the uniview is intended to use to communicate with other OpenStack backends, and takes values of "public", ""such as nova and cinder. The choice of interface type need based on the strategy of your clouds and bottom line network of the selected endpoints is accessible from the host of Uniview. In most cases, public provides best accessibility, but internal and admin may be more efficient as with internal network. 


4. Prepare your install environment by cloing current repo:

```
git clone https://github.com/ComputingStack/Uniview-OpenStack-Portal.git
```

cd ~/Uniview-OpenStack-Portal/docker-compose

edit conf/univew.json with necessary above database and openstack access info at step 2 and 3

For enterprise starter edition, give any random string to var of uniview_key.

5. Bring Uniview Core service up
```
docker-compose up

$#or with latest docker compose binary

docker compose up
```


6. Access your service at: http://host_ip:3006/
When webhook based monitoring from external load balancer, or by such as Nagio, the URI of health check is: Monitor your collector status at http://host_ip:3006/getVersion

7. Bring Uniview collector up
```
docker-compose -f docker-compose-collector.yml up

$# or with latest docker compose binary

docker compose -f docker-compose-collector.yml up
```

8. Monitor your collector status at http://host_ip:3007/getVersion

# Uniview Install with Ansible

Uniview integration with Kolla Ansible can be as easy as just one more line of ansible to follow after Kolla ansible. It's highly recommanded to co-locate Uniview with the controller nodes where Kolla ansible installs OpenStack.

1. Prerequisites: ansible, pip3, docker installed in targeted host server

When Uniview is co-located with Kolla ansible hosting servers, those prerequisites are well satisfied already. 

2. Prepare MySql database or Maria Db

To do so, an example is to install on an Ubuntu server with command: sudo apt install mysql-server. Once MySql is up, create databse:
```
CREATE DATABASE uniview; CREATE USER 'uniview'@'%' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON uniview.* TO 'uniview'@'%'; exit
```
Test out if mysql can be acessible, execute command from docker host:
mysql -h host -u uniview -ppassword

3. Gather your OpenStack user access credentials, for example
```
"keystone_auth_url": "http://192.168.1.11:5000/v3",
"os_interface_type": internal
"os_auth_user": "uniview",
"os_auth_pass": "pass",
"os_auth_project": "uniview",
```
In above credentials:

"keystone_auth_url" is keystone host address used to communicate with keystone. It can be either admin, internal or public endpoints in the format of above. It does support both https and http

"os_interface_type" is the type of endpoint the uniview is intended to use to communicate with other OpenStack backends, and takes values of "public", ""such as nova and cinder. The choice of interface type need based on the strategy of your clouds and bottom line network of the selected endpoints is accessible from the host of Uniview. In most cases, public provides best accessibility, but internal and admin may be more efficient as with internal network. 


4. Prepare your install environment by cloing current repo:

git clone https://github.com/ComputingStack/Uniview-OpenStack-Portal.git

cd ~/Uniview-OpenStack-Portal/Ansible

edit uniview_ubuntu.yml with necessary above database and openstack access info at step 2 and 3

For enterprise starter edition, give any random string to var of uniview_key.

5. Bring Uniview Core service up
```
$ ansible-playbook -i ./ uniview_ubuntu.yml --connection=local
```
If ansible runs from different  host, as as your Kolla ansible console server: 

```$ ansible-playbook -i ./ uniview_ubuntu.yml ```

6. Access your service at: http://host_ip:3006/


7. Bring Uniview collector service up
```
$ ansible-playbook -i ./ uniview_ubuntu_collector.yml --connection=local
```
If ansible runs from different  host, as as your Kolla ansible console server: 

```$ ansible-playbook -i ./ uniview_ubuntu_collector.yml ```

8. Monitor your collector service health at: http://host_ip:3007/getVersion


# When High Avaialble Install Behind a Load Balancer for Uniview Core

In a critical install, it's recommanded to install 2+ docker instances or kubernetes Pods when deployed over Kubernetes cludster. In this case, an health check URI is provided to return 200 OK to serve the purpose to enable the health check function at your load balancer.  Below is an backend configuratino example when the LB is Haproxy by the nature, and you may tailur to your specific env however. 

```
backend backend-uniview
    option httpchk GET /getVersion
    server uniview1 ip1:3006 check inter 180s
    server uniview2 ip2:3006 check inter 180s
```
