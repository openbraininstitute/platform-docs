# AWS 

## ECS Services 

### API Service
* Launch Type: AWS Fargate
* CPU: 512 CPU units (0.5 vCPU)
* Memory: 1024 MB (1 GB)

### Orchestrator Service
* Launch Type: AWS Fargate
* CPU: 512 CPU units (0.5 vCPU)
* Memory: 1024 MB (1 GB)
* Workers: 2 worker processes per task
* Queues: 3 priority queues (high, medium, low)

### Executor Tasks (Dynamic)
* Launch Type: AWS Fargate
* CPU: 512 CPU units (0.5 vCPU)
* Memory: 1024 MB (1 GB)
* Storage: EFS mounts for shared data access
* Types: 
  - Default executor
  - Specialized private executor

#### EFS Integration
* Public Launch Data EFS: Shared file system for executor tasks
* Mount Points:
  - `/data/aws_s3_internal/public` (internal public data)
  - `/data/aws_s3_open` (open public data)

## RDS PostgreSQL Database

### Instance Configuration
* Engine: PostgreSQL 17
* Instance Class: db.t4g.micro
  * vCPUs: 2
  * Memory: 1 GB
  * Network Performance: Up to 2,085 Mbps
* Storage: 50 GB allocated storage

## ElastiCache Redis

### Cluster Configuration
* Engine: Redis 7
* Node Type: cache.t4g.micro
  * vCPUs: 2
  * Memory: 0.5 GB
  * Network Performance: Up to 2,085 Mbps
* Number of Nodes: 1


