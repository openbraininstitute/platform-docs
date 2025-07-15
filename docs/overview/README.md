# Overview

## Architecture Overview

Overview of the platform.

![Open Brain Platform - Main Architecture](resources/1_main.drawio.svg)

## Services overview

![Open Brain Platform - Services](resources/4_services.drawio.svg)


## Infrastructure Overview

Overview of the infrastructure, such as load balancer, NAT, DNS, etc.

> **TODO**
> Add proper details and Draw.io diagram below, instead of PNG

![Open Brain Platform - Infrastructure](resources/2_infrastructure.drawio.svg)


## Virtual Labs and Projects

`Virtual Labs` and `Projects` are two concepts used for authentication, permissions and billing.
A `Virtual Lab` is an organizational aide under which `Projects` can be created.
There are two types of users within a `Virtual Lab`: `Admins` and `Team Members`.
Admins are able to manage the users within the `Virtual Lab`, manage billing, and are able to set budget on `Project`, in a dollar amount.
`Virtual Labs` can be created by any logged in user, and they must have a unique name within the set of all `Virtual Labs`.

Within `Virtual Labs`, `Projects` can be created to help with organization.
These `Projects` then have resources attached to them, including a private Nexus project.
These resources are accounted for and billed in a per `Project` fashion.
Team members must be granted access to `Projects`, and they are the only ones with access to the Nexus project.
It is possible to be part of a `Virtual Lab`, but not part of a `project`.

When communicating with other services, the UUID of the virtual lab, and the UUID of the project should always be used.
They are the stable ID, other properties may change.

When using web API's, the header should be used to transmit the `virtual-lab-id` and `project-id`:
```
    GET /[....]/ HTTP/1.1
    Accept: */*
    Accept-Encoding: gzip, deflate
    Authorization: Bearer [....]
    Connection: keep-alive
    Host: ...
    project-id: 42424242-bc92-4e30-aa32-63be8eb9ca49
    virtual-lab-id: 42424242-a19e-4b3d-b737-5286a5fbea2d
```

## Configuration and Deployment
The AWS infrastructure required for the Open Brain Platform is exclusively managed through infrastructure-as-code. We use Terraform to configure and deploy the different components of the platform, including setting up IAM policies, security groups, or tagging.

Each service is defined on its own Terraform module and operates independently from the rest of the services.

> **TODO**
> Elaborate some of the deployment details and general information.

## Cost Monitoring Support
Our infrastructure relies heavily on the use of **AWS Tags** in order to understand the overall operational costs for each of the services running in the platform. Our goal is to ensure that we can not only provide realistic costs estimates, but also identify the specific resources that each Virtual Lab and Project utilizes.

![Open Brain Platform - Main Architecture](resources/3_costmonitoring_tags.drawio.svg)

Further, we have introduced mechanisms for monitoring the tags of each resource after Terraform runs and deploys the infrastructure changes. In particular, a dedicated CI job runs and utilizes **AWS Resource Explorer** to query for untagged resources. We then utilize different information from the resource to determine the component, and in certain cases the resource is tagged automatically (e.g., Terraform does not tag private ENIs).

Daily updates are provided for the teams to monitor their untagged resources and fix any potential issues introduced in the infrastructure-as-code modules.

