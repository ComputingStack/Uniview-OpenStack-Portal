# Uniview - Comprehensive OpenStack Billing, Control Panel and Dashboard, and Clusters Federation Solution
This repository serves as a central location for artifacts and documentation related to the deployment of the ComputingStack Uniview OpenStack Portal. It contains all necessary components for installation and ongoing operations, including Kubernetes deployment Helm charts, docker-compose files, configuration scripts, database schemas, and process documentation required to establish a fully functional cloud portal integration. The repository also functions as a ticketing system for logging and tracking issues and facilitating communication between the ComputingStack team and clients.

Uniview is a comprehensive solution that offers OpenStack billing capabilities along with robust control panels and dashboards designed for both public and private clouds running on OpenStack infrastructure.

Key Features and Mission

## 1. Native OpenStack Billing Solution
   
Uniview is missioned to provide a native billing solution that integrates seamlessly with the upstream OpenStack components: Ceilometer, Gnocchi, and Cloudkitty. Adopting community-driven metering solutions significantly impacts the total cost of offering cloud services.
Uniview enhances this foundation with:
Out-of-the-box readiness for bill generation and aggregation.
Support for both pre-pay and post-pay models.
Integrated payment gateway and invoice management.
Leveraging standard community components ensures the solution remains current, comprehensive, and sustainable. This approach avoids vendor lock-in and supports a wide range of services beyond standard VMs, including Swift object storage, Ceph RGW, and database-as-a-service offerings.

## 2. Premium Alternative User Console and Dashboards

Uniview provides a modern alternative to OpenStack Horizon and Skyline, focusing heavily on user experience (UX). Our goal is to offer visually enriched interfaces and a "one-click away" experience that meets the sophisticated infrastructure management needs of modern enterprises. Uniview engineering has nearly redesigned and rewritten every services of OpenStack with orchetrated API interaction to meet the expectations of 'Modern, Sophisticate, Complete and Automated'.

## 3. Making up Key Functionalities over Open-Source Status Quo that are Critical to Success of Cloud Adoption

Features such as data backup and schedules of events are critical for CLOUD automation. Without such cozy features, cloud quality is compromised when high end workload isn't find its fit. ComputingStack uniview helps to make those features accessible by simply a click without no extra 3rd part integrations, so that it could save time and also cost of engineering on those, just through out of box support. 

Other add-on such as Kubernetes Dashboard support added a seamless sense of integration of OpenStack and Kubernetes, the top 2 infrastructure technologies today.  Many features of such, to have a standalone solution can be expensive, whereas Uniview comes with pre-built as one platform. 


## 4. Clusters Federation and Integration to One Brand, One Portal, One-Sign in and One Bill

Uniview recent innovation (Beginning of 2026) well improved its capability of integrating many various OpenStack clusters in plug and play mode, regardless of they share keystone or share nothing, the versions (e.g. one is newer, others are old), features, mutli-regions or single region. With Uniview-IDP, and Uniview-core together, a cluster can be added instantly to serve Enterprise user by as simple as adding a user to a group. When a cluster becomes obsolete, it can be safely removed without disrupting overall stability. Uniview IDP can be a perfect integration point of enterprise SSO, with OPENID or SAML too without requiring each workload cluster to support OPENID, neither SAML. The accomodation of dynamic can help Enterprise agility, esp. at early phase of OpenStack adoption when clusters are formed for different purposes. Technically implemented:

**Abstraction:** Uniview provides a single entry point that unifies multiple, coexisting OpenStack clusters under one "pane of glass".

**Hot-Swapping Infrastructure:** Administrators can add or decommission clusters as needed without affecting the user base. To the end user, the cloud remains a single, continuous service regardless of one backend OpenStack changes.

**Federated Identity:** Uniview integrates easily with enterprise identity providers like OpenID, Microsoft Entra ID, and Active Directory.

**SSO Readiness:** By using Single Sign-On (SSO), users sign in once to the CMP and gain access to authorized resources across any connected cluster.

**Self Password Recovering:** by multiple steps of verification, users can recover password automatically without reaching out to administrators

**Hierarchical Management:** It implements a true organization concept, allowing enterprise managers to handle their own Group Management and permissions via self-service. 

**Security & Automation:** The platform simplifies critical security tasks such as enforcing Multi-Factor Authentication (MFA) and enabling self-service password resets, drastically reducing the burden on IT support teams. 

   
## 5. Enhanced Day 2 Operations

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

# Is Uniview Right For You?

Uniview is ideal for those clouds in scale, or carrier grade, and when differentiators matter.  Uniview is proven unique in meeting requirments when a cloud visions to be leading in an area, and has constraints such as scability, branding, low efficiency  of customer interaction, and has complex integration needs. The scability can be vertical such as capacity growing from 2K cores to 10k, and it can be also horizontal that new services can't be easily added for example GPU, Kubernetes and cloud storage due to lack of means of operational of billing, or those service can't come to production readiness and completeness. Uniview is also ideal for business that have longer terms vision, that a partnership with Uniview will benefit the future evolution and stay competitive for years to come with Uniview investment on new features, without their ground work. For those clouds that have existing billing sytem and user console, Uniview is known having best agility to support migrating with even zero change of your systems, and Uniview can accomodate.

Due to relatively complexity, Uniview recently dropped committment to white-labelling. Uniview can go in quick manner, but white-labelling way of hit-ground to go is not Uniview top value. For small business and just get-started, in case partnership is important, Uniview is still a good choice.  

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

