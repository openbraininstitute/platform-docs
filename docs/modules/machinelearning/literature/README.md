# Literature Service

- **Description:** Finds publications related to scientific questions
- **Also known as:** Scholarag
- **Sources:**
    - <https://github.com/openbraininstitute/scholarag>
    - <https://github.com/openbraininstitute/scholaretl>
- **API:** <https://openbluebrain.com/api/literature/docs>
- **Dashboard:** <https://us-east-1.console.aws.amazon.com/cloudwatch/home?region=us-east-1#dashboards/dashboard/scholarag>
- **AWS Cluster:** <https://us-east-1.console.aws.amazon.com/ecs/v2/clusters/ml-ecs-cluster/services?region=us-east-1>
- **AWS Services:**
    - Backend: <https://us-east-1.console.aws.amazon.com/ecs/v2/clusters/ml-ecs-cluster/services/ml-ecs-service-backend/health?region=us-east-1>
    - ETL: <https://us-east-1.console.aws.amazon.com/ecs/v2/clusters/ml-ecs-cluster/services/ml-ecs-service-etl/health?region=us-east-1>
    - Consumer: <https://us-east-1.console.aws.amazon.com/ecs/v2/clusters/ml-ecs-cluster/services/ml-ecs-service-consumer/health?region=us-east-1>
    - Grobid: <https://us-east-1.console.aws.amazon.com/ecs/v2/clusters/ml-ecs-cluster/services/ml-ecs-service-grobid/health?region=us-east-1>
- **Maintainer(s):**

## Overview

![Literature Service - Main Architecture](resources/1_main.drawio.svg)
