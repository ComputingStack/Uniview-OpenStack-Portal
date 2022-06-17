# Uniview-OpenStack-Portal
The current repo is a place for artifacts and install manual, discussion and issues surrounding deployment of ComputingStack Uniview Openstack Portal. It includes the artifacts needed except docker image, such as kubernetes deploy helm chart, docker-compose, configuration and Database releated scripts, process etc, order to stand up a proper cloud portal integration.

Any questions and suggestions are appreciated!

The reposition and git hub serve as well a ticketing system for logging new issue, tracking hisotrical issue, communication between Computingstack team and clients.

# Get Help

1. Leave question, or comments on the current github pages! Our community manager will hop on and respond shortly!
2. Visit http://www.computingstack.com, or contact admin@computingstack.com!

# Get Started with docker-compose

Step 1: OpenStack backend is up. The minimal requirement is to have Keystone running.

Step 2: Prepare docker host with necessary docker and docker-compose preinstalled

Step 3: Prepare mysql or maria database engine or reuse any of those pre-created

Step 4: create database and user, grant the user to access the database

Step 5: compose uniview.json and Docker service is up

# Get Started with Kubernetes helm charts

Step 1: OpenStack backend is up. The minimal requirement is to have Keystone running.

Step 2: Prepare Kubernetes cluster or get proper access for where to host your portal service

Step 3: Prepare mysql or maria database engine or reuse any of those pre-created

Step 4: create database and user, grant the user to access the database

Step 5: K8s service is up
