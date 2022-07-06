# Uniview-OpenStack-Portal
The current repo is a place for artifacts and install manual, discussion and issues surrounding deployment of ComputingStack Uniview Openstack Portal. It includes the artifacts needed except docker image, such as kubernetes deploy helm chart, docker-compose, configuration and Database releated scripts, process etc, order to stand up a proper cloud portal integration.

Computingstack Uniview portal is an alternative to OpenStack Horizon for frontend premium solutions! One major drive of Uniview is the User Experience, so that OpenStack cloud can match up itself by providing users visual enriched experiences, everything just one click away, comprehensive to meet a modern enterprise would need in terms of infrastructure and clouds stand for!

Any questions and suggestions are appreciated!

The reposition and git hub serve as well a ticketing system for logging new issue, tracking hisotrical issue, communication between Computingstack team and clients.

# Get Help

1. Leave question, or comments on the current github pages! Our community manager will hop on and respond shortly!
2. Visit http://www.computingstack.com, or contact admin@computingstack.com!

# Get Started with docker-compose
Below process are applicable to both Uniview free edition (or called based edition) and enterprise 
edition

Step 1: OpenStack backend is up. The minimal requirement is to have Keystone running.

Step 2: Prepare docker host with necessary docker and docker-compose preinstalled

Step 3: Prepare mysql or maria database engine or reuse any of those pre-created

Step 4: create database and user, grant the user to access the database from docker hosts

Step 5: compose uniview.json and Docker service is up

# Get Started with Kubernetes helm charts
Below process are applicable to both Uniview free edition (or called based edition) and enterprise 
edition

Step 1: OpenStack backend is up. The minimal requirement is to have Keystone running.

Step 2: Prepare Kubernetes cluster or get proper access for where to host your portal service

Step 3: Prepare mysql or maria database engine or reuse any of those pre-created

Step 4: create database and user, grant the user to access the database from K8s hosts

Step 5: K8s service is up

# Resources:
Uniview Demo: https://www.youtube.com/channel/UCoTpDHR9JGQHIWfh0XF_5yQ

Install docs: https://github.com/ComputingStack/Uniview-OpenStack-Portal/tree/main/docs

Customization Docs: 

