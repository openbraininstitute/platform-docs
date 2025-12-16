# AWS 

## ECS Service (NeuroAgent)

* Launch Type: AWS Fargate
* CPU: 1024 CPU units (1 vCPU)
* Memory: 2048 MB (2 GB)
* Minimum Capacity: 1 instance
* Maximum Capacity: 5 instances


## RDS PostgreSQL Database

### Instance Configuration
* Engine: PostgreSQL 16
* Instance Class: db.t4g.micro
  * vCPUs: 2
  * Memory: 1 GB
* Storage: 20 GB GP2

## ElastiCache Redis

### Cluster Configuration
* Engine: Redis 7
* Node Type: cache.t4g.micro
  * vCPUs: 2
  * Memory: 0.5 GB
