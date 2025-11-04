# Uniview - Comprehensive OpenStack Billing, Control Panel and Dashboard Solutions
This repository serves as a central location for artifacts and documentation related to the deployment of the ComputingStack Uniview OpenStack Portal. It contains all necessary components for installation and ongoing operations, including Kubernetes deployment Helm charts, docker-compose files, configuration scripts, database schemas, and process documentation required to establish a fully functional cloud portal integration. The repository also functions as a ticketing system for logging and tracking issues and facilitating communication between the ComputingStack team and clients.

Uniview is a comprehensive solution that offers OpenStack billing capabilities along with robust control panels and dashboards designed for both public and private clouds running on OpenStack infrastructure.

Key Features and Mission

1. Native OpenStack Billing Solution
   
Uniview is missioned to provide a native billing solution that integrates seamlessly with the upstream OpenStack components: Ceilometer, Gnocchi, and Cloudkitty. Adopting community-driven metering solutions significantly impacts the total cost of offering cloud services.
Uniview enhances this foundation with:
Out-of-the-box readiness for bill generation and aggregation.
Support for both pre-pay and post-pay models.
Integrated payment gateway and invoice management.
Leveraging standard community components ensures the solution remains current, comprehensive, and sustainable. This approach avoids vendor lock-in and supports a wide range of services beyond standard VMs, including Swift object storage, Ceph RGW, and database-as-a-service offerings.

2. Premium Alternative Dashboard

Uniview provides a modern alternative to OpenStack Horizon and Skyline, focusing heavily on user experience (UX). Our goal is to offer visually enriched interfaces and a "one-click away" experience that meets the sophisticated infrastructure management needs of modern enterprises.

3. Making up key functionalities that are critical to success of cloud adoption

Features such as data backup are schedules of events are critical for CLOUD automation. Without such cozy features, cloud quality is compromised when high end workload isn't find its fit. ComputingStack uniview helps to make those features accessible by simply a click without no extra 3rd part integrations, so that it could save time and also cost of engineering on those, just through out of box support. 

Another feature is its capability that orchestrates complex OpenStack cluster. Multiple OpenStack clucsters, when they either share keystone or share nothing, Uniview multiple clouds federation can orchestrate into a sense of ONE cloud for end users to consume. Shared nothing cluster is proven one of practical approaches to have reliable cloud and enable business agility. 

4. Enhanced Day 2 Operations

Uniview emphasizes features for "Day 2" activities (ongoing operations), such as comprehensive monitoring, an integrated ticketing system, extensive dashboards, enriched metric visualizations, and enhanced Ceph and Kubernetes management interfaces. These premium features exceed standard open-source offerings.


Uniview is a ready-to-go solution for monetizing OpenStack environments, suitable for small-to-medium public clouds and large enterprise deployments. By utilizing Uniview, organizations can save significant in-house engineering costs.
The solution has been rigorously developed over several years and is currently stable and low-maintenance. It is highly customizable for service providers looking to differentiate their offerings. Uniview works with all OpenStack installs and is an ideal fit for enterprise clouds requiring hierarchical organization support and high security standards. It also meets critical public cloud requirements such as billing, user management/registration, tenant isolation, and security needs.

The current repo is a place for artifacts and install manual, discussion and issues surrounding deployment of ComputingStack Uniview Openstack Portal. It includes the artifacts needed for install and daily operations, such as kubernetes deploy helm charts, docker-compose, configuration and Database releated scripts, process, customizations etc, in order to stand up a proper cloud portal integration.



The curent repositary serves as well a ticketing system for logging new issue, tracking hisotrical issue, communication between Computingstack team and clients.

# Pricing and Uniview Business Model

With above general understanding, the second question might be on business model, e.g. you might wonder if Uniview is open source or free edition. Uniview vision has been to enrich OpenStack ecosystem by providing a thin layer of proprietary over OpenStack, so users can have the perfect balance between Open-Source freedom and quality differentiators. We strive to provide the best affordability by this low maintenance, last mile solution, so that it doesn't change the nature of open source based solution overall. There are many features such as white labelling and self service discovering etc to configure itself etc to make Uniview  adaptable, eventually bring down cost.  Also Uniview has a process ready for quick per customer build packaging by compiling, docker image distribution, separate email, theme, message, locale and language packs templates etc. With a few hours efforts for details clarifying, a customer can possibly get a fully cut-for per business packaging ready.

Uniview comes in with mission in mind to bring down the total cost of an open source cloud with necessary tools, utilites and filling last mile engineering gaps that open source community will not fill. Uniview has been developed and polished in agile mode through extensive industry partnerships. 

You may also find Uniview is not a market promotion agreesive business. Yes, Uniview is more developers and fun driven. Infrastructure, esp Cloud has never been a quick process. Sustainability is the first priority that we pursue. We facilitate by providing many online necessary supports for self-paced testing, integration etc, and for serious OpenStack deploys, you will go only when you feel confident.  An agile  team if not fully standby beforehands, will provide services when the need comes in.

There are also some free editions provided, and free license for non-profit organizations. And we trust a partner oriented collaboration with transparency to drive the success to have a win-win on both sides. Any way just write to us for more details or a quote!

# Get Help

1. Leave question, or comments on the current github pages! Our community manager will hop on and respond shortly!
2. Visit https://www.computingstack.com, or contact admin@computingstack.com!

# Get Installed with docker-compose with just a couple easy steps
Docker-compose is generic and the best get-started step for Uniview install. Once single docker host install is successful, various other deployments will be just a short adjustment to that particular hosting requirements over local docker install process. Below process are applicable to both Uniview free edition (or called based edition) and enterprise 
edition

Prerequistes:

1: OpenStack backend is up. The minimal requirement is to have Keystone running.

2: Prepare docker host with necessary docker-ce and docker-compose (Standalone is ok) preinstalled

3: Prepare mysql or maria database engine or reuse any of those pre-created, such as install by "sudo apt install mysql-server" on a Ubuntu host

Steps:

Step 1: Create database and user, grant the user to access the database from docker hosts

Step 2: Edit the credentials needed in the docker-compose file as environment variables 

Step 3: Service is up: "docker-compose up"

Further details, please refer to: https://github.com/ComputingStack/Uniview-OpenStack-Portal/tree/main/docs

# Automated Install with Ansible
Ansible based install with Uniview Core and Collector is a recommended way when automation is needed for frequent install/uninstall one or more Uniview instances.  

Prerequistes:

1: OpenStack backend is up. The minimal requirement is to have Keystone running.

2: Prepare your ansible console host with ansible binary and ansible docker plugin installed

2: Prepare docker host with necessary docker-ce preinstalled

3: Prepare mysql or maria database engine or reuse any of those pre-created, such as install by "sudo apt install mysql-server" on a Ubuntu host

Steps:

Step 1: Create database and user, grant the user to access the database from docker hosts

Step 2: Edit the credentials needed in ansible-playbooks variables 

Step 3: Service Core is up: "ansible -i ventory uniview_uniview.yml"

Step 4: Service Collector is up: "ansible -i ventory uniview_uniview_collector.yml"

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

