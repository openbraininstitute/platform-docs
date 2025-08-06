# Notebooks Service

- **Description:** Runs Jupyter notebooks interactively
- **Also known as:** Jupyterhub Service on Kubernetes
- **Source:** https://z2jh.jupyter.org/en/stable/index.html
- **AWS EKS Cluster:** 
- **AWS Service:** <>
- **Maintainer(s):**

## JupyterHub on EKS: Service Architecture

This JupyterHub service is based on the **Zero to JupyterHub with Kubernetes** distribution.

### Core Architecture & AWS Integration

*   **Orchestration:** AWS Elastic Kubernetes Service (EKS).
*   **Authentication:** Keycloak configured as the OIDC provider.
*   **DNS:** Managed via AWS Route53. 
*   **User Persistence:** Each user is allocated a 10 GB EBS-backed PersistentVolumeClaim (PVC) which is mounted as their `/home` directory. This ensures state persistence across sessions.
*   **Shared Data:** A central S3 bucket can be mounted as a read-only volume into each user pod to provide access to shared scientific data.

### User Session & Environment

*   **Spawning:** A new user pod is spawned on-demand upon successful login.
*   **Permissions:** Users are granted root access within their pod's container. However the container's root filesystem is ephemeral; only the `/home` volume is persisted.

### Deployment

The infrastructure and service are deployed using the following tools:
*   `aws-cli`
*   `eksctl`
*   Community-provided Helm charts for JupyterHub and related components.

### Architecture

![Notebooks Service - Main Architecture](resources/1_main.drawio.svg)