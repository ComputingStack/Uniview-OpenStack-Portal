# Uniview OpenStack Frontend Solutions
The current repo is a place for artifacts and install manual, discussion and issues surrounding deployment of ComputingStack Uniview Openstack Portal. It includes the artifacts needed except docker image, such as kubernetes deploy helm chart, docker-compose, configuration and Database releated scripts, process, customizations etc, in order to stand up a proper cloud portal integration.

Computingstack Uniview portal is an alternative dashboard to OpenStack Horizon and Skyline for frontend premium solutions! But Uniview is far more than Horizon/Skyline. It has full spectrum monitoring, billing and payment integration, and many metrics graphical views and tons of wizard that provide unmatchable cloud observability. One major drive of Uniview is the User Experience, so that OpenStack cloud can match up itself by providing users visual enriched experiences, everything just one click away, comprehensive to meet a modern enterprise would need in terms of infrastructure and clouds stand for! Uniview is also more focused on user constant needs in day 2 activities, such as providing tools for users workload troubleshooting, metrics and dashboard, cross resources visualized view of instance, volume, connectivities, kubenetes container infa, object store, load balancer, database and much more. 

Generally Uniview has been considered as a READY2GO for OpenStack monetization, whichever for small-medium public clouds or big organization premium clouds, so that user can save the in-house engineering. From use cases point of view, Uniview works with all different OpenStack installs, but it is known best fitting to the needs of enterprise cloud with relative hierachical organization, high security and better user experiences, as most of common requirements are met out of box. It meets majority of the needs of many Public Clouds too, such as most desireable billing solutions, ticketing,  user recruitment/registration and tenant management, public cloud security needs etc. 

Any questions and suggestions are appreciated!

The reposition and git hub serve as well a ticketing system for logging new issue, tracking hisotrical issue, communication between Computingstack team and clients.

# Pricing and Uniview Business Model

With above general understanding, the second question might be on business model, e.g. you might wonder if Uniview is open source or free edition. Considering there are entry level community portal such as Skyline and Horizon, and there are even some niche solutions, Uniview, due to its complexity and steep development curve, high end Uniview edition is not free. To mature such a solution as Uniview, it requires many years to decade constantly partnering and intense developments to have all features polished to be the best.  There is entry level edition which is free to public. The entry level edition is limited for a small to medium up to 48 cores deploy. The good news is that we strive to provide the best affordability and we provides flexibility for selected parters to start with minimal upfront too to lower your investment risk. On other hands, for such non-profit organizations, Uniview yes is license-free. Please just contact if you fall into such category! 

# Get Help

1. Leave question, or comments on the current github pages! Our community manager will hop on and respond shortly!
2. Visit https://www.computingstack.com, or contact admin@computingstack.com!

# Get Started with docker-compose with just a couple easy steps
Docker-compose is generic and the best get-started step for Uniview install. Once single docker host install is successful, various other deployments will be just a short adjustment to that particular hosting requirements over local docker install process. Below process are applicable to both Uniview free edition (or called based edition) and enterprise 
edition

Prerequistes:

1: OpenStack backend is up. The minimal requirement is to have Keystone running.

2: Prepare docker host with necessary docker and docker-compose (Standalone is ok) preinstalled

3: Prepare mysql or maria database engine or reuse any of those pre-created, such as install by "sudo apt install mysql-server" on a Ubuntu host

Step 1: Create database and user, grant the user to access the database from docker hosts

Step 2: Edit the credentials needed in the docker-compose file as environment variables 

Step 3: Service is up: "docker-compose up"

Further details, please refer to: https://github.com/ComputingStack/Uniview-OpenStack-Portal/tree/main/docs

# Get Started with Kubernetes helm charts
Below process are applicable to both Uniview free edition (or called based edition) and enterprise 
edition

Step 1: OpenStack backend is up. The minimal requirement is to have Keystone running.

Step 2: Prepare Kubernetes cluster or get proper access for where to host your portal service

Step 3: Prepare mysql or maria database engine or reuse any of those that was pre-created

Step 4: Create database and user, grant the user to access the database from K8s hosts

Step 5: K8s service is up

# Resources:
Uniview Demo: https://www.youtube.com/channel/UCoTpDHR9JGQHIWfh0XF_5yQ

Uniview install demo with docker-compose: https://youtu.be/KLinQ-vprPk

Install docs: https://github.com/ComputingStack/Uniview-OpenStack-Portal/tree/main/docs

Customization Docs: 

