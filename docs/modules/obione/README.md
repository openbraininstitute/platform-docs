# obi-one Service

- **Description:** Service offering varied scientific operations defined in the obi-one package.
- **Also known as:**
- **Source:** <https://github.com/openbraininstitute/obi-one>
- **API:** <https://www.openbraininstitute.org/api/obi-one/docs>
- **AWS Dashboard:** <https://us-east-1.console.aws.amazon.com/cloudwatch/home?region=us-east-1#dashboards/dashboard/obi-one>
- **AWS Cluster:** <https://us-east-1.console.aws.amazon.com/ecs/v2/clusters/obi_one_ecs_cluster/services?region=us-east-1>
- **AWS Service:** <https://us-east-1.console.aws.amazon.com/ecs/v2/clusters/obi_one_ecs_cluster/services/obi_one_ecs_service/health?region=us-east-1>
- **Maintainer(s): James B Isbister, Christoph Pokorny, Gianluca Ficarelli**

## Overview

<!-- Brief introduction with an overview of the module. -->

The service exposes functionalies of the obi-one package <https://github.com/openbraininstitute/obi-one> (a standardized library of functions + workflows for biophysically-detailed brain modeling written in Python) through two types of endpoint: 
1. Generated endpoints. These endpoints are generated dynamically for a specified list of configuration schemas defined in the obi-one package. Calling these endpoints executes the scientific code associated with the configuration schema.
2. Declared endpoints. These are explicitly defined endpoints, also exposing scientific functionalities of the package.

Endpoints may use entities from and do operations on EntityCore through EntitySDK.

![obi-one Service - Main Architecture](resources/1_main.drawio.svg)

<!-- Here are some of the key technologies utilized for the infrastructure:

- The idea is to mention details about the AWS services, such as the service utilizes **AWS XXXXXXX** service orchestrated via **AWS YYYYYYYYY**.  -->
