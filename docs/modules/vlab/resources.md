# AWS 


## ECS Fargate Service
* Launch Type: FARGATE
* CPU: 1 vCPU (1014 CPU units)
* Memory: 2 GB  

## Database (RDS PostgreSQL)
* Engine: PostgreSQL 14
* Instance Class: `db.t3.small` (2 vCPU, 2 GB RAM)
* Storage allocated: 5 GB

## Cache (ElastiCache Redis)
* Engine: Redis
* Node Type: `cache.t2.micro` (1 vCPU, 0.555 GB RAM)
