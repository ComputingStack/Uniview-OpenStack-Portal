# Uniview OpenStack Billing and Controal Panel Dashboard Solutions
The current repo is a place for artifacts and install manual, discussion and issues surrounding deployment of ComputingStack Uniview Openstack Portal. It includes the artifacts needed for install and daily operations, such as kubernetes deploy helm charts, docker-compose, configuration and Database releated scripts, process, customizations etc, in order to stand up a proper cloud portal integration.

Uniview is a total solution of OpenStack monetization. 

First of all, it's missioned to provide a native OpenStack Billing solution over upstream communication packages of Ceilometer+Gnocchi+Cloudkitty. What metering solution is adopted is top factor for OpenStack total cost of cloud service offering. Uniview complements by its out box readiness of bill generating/aggregating, pre-pay and post-pay support, Payment Gateway Integration, invoice management etc. Benefits to use common components for OpenStack Billing are significant, such as it's up to to date, comprehensive (as solution by communities), sustainable to the future. To compare some niche solutions, communities driven Ceilometer+Gnocchi+Cloudkitty is more future friendly and more complete that supports all possibilities, such as not only VM, but also swift object store, ceph RGW based object storage, other upstream services such as database as a service easily along the community artifacts. There will be no vendor-locked in. Given there are other proprietary solutions of metering (mostly based on RabbitMQ), such as by Fleio, Osie and Cloud7, Uniview strives to complement the ecosystem by an alternative solution when service providers have Ceilometer+Gnocchi in place beforehand, Uniview can be a best candidate that supports E2E billing in no time with no compromise of open-source benefits and its flexibility.

Secondly Uniview is missioned to provide an alternative dashboard to OpenStack Horizon and Skyline for frontend premium solutions! One major drive of Uniview has been the User Experience, so that OpenStack cloud can match up itself by providing users visual enriched experiences, everything just one click away, comprehensive to meet a modern enterprise would need in terms of infrastructure and clouds stand for! 

The last but not the least Uniview is also more focused on the needs of Day 2 activities, such as monitoring, ticketing system, tons of dashboards, enriched metrics graphic views, enhanced kubernetes dashboards, Ceph integrated dashboards etc. All is about to have a strong sense of premium that open-source is not expected to and wil never provide.

Generally Uniview has been considered as a READY2GO for OpenStack monetization, whichever for small-medium public clouds or big organization premium clouds, so that user can save the in-house engineering. Uniview has been incubated for many years through industry collaboration and intensified developments. At the moment it's a low maintenance stage. However it can be further customized to help a service provider to build its differentiators to support a possible regional leading cloud initiatives.  From use cases point of view, Uniview works with all different OpenStack installs, and is known best fitting to the needs of enterprise clouds that have with relative hierachical organization, high security required! For those most of common requirements can be met out of box. It meets majority of the needs of many Public Clouds too, such as most desireable billing solutions, ticketing,  user recruitment/registration and tenant management, public cloud security needs etc. 

Any questions and suggestions are appreciated!

The curent repositary serves as well a ticketing system for logging new issue, tracking hisotrical issue, communication between Computingstack team and clients.

# Pricing and Uniview Business Model

With above general understanding, the second question might be on business model, e.g. you might wonder if Uniview is open source or free edition. Uniview vision has been to enrich OpenStack ecosystem by providing a thin layer of proprietary over OpenStack, so users can have the perfect balance between Open-Source freedom and quality differentiators. We strive to provide the best affordability by this low maintenance, last mile solution, so that it doesn't change the nature of open source based solution overall. There are many features such as white labelling and self service discovering etc to configure itself etc to make Uniview  adaptable, eventually bring down cost.  Also Uniview has a process ready for quick per customer build packaging by compiling, docker image distribution, separate email, theme, message, locale and language packs templates etc. With a few hours efforts for details clarifying, a customer can possibly get a fully cut-for per business packaging ready.

Uniview comes in with mission in mind to bring down the total cost of an open source cloud with necessary tools, utilites and filling last mile engineering gaps that open source community will not fill. Uniview has been developed and polished in agile mode through extensive industry partnerships. 

You may also find Uniview is not a market promotion agreesive business. Yes, Uniview is more developers and fun driven. Infrastructure, esp Cloud has never been a quick process. Sustainability is the first priority that we pursue. We facilitate by providing many online necessary supports for self-paced testing, integration etc, and for serious OpenStack deploys, you will go only when you feel confident.  An agile  team if not fully standby beforehands, will provide services when the need comes in.

There are also some free editions provided, and free license for non-profit organizations. And we trust a partner oriented collaboration with transparency to drive the success to have a win-win on both sides. Any way just write to us for more details or a quote!

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

