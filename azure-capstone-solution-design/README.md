# Azure Enterprise Multi-Tier Cloud Architecture

## Objectives
Design and implement a secure, monitored, and governed multi-tier Azure solution using enterprise cloud architecture principles.

## Tools Used
- Microsoft Azure
- Azure CLI
- Docker
- Azure Virtual Network
- Network Security Groups
- Azure Container Registry
- Azure Container Instances
- Azure Key Vault
- Log Analytics Workspace
- Bash
- Python Flask
- Nginx
- JSON
- Git

## Key Skills Demonstrated
- Azure network architecture
- Multi-tier subnet segmentation
- Network security rule design
- Container image build and registry push
- Azure container deployment troubleshooting
- Cloud secrets management
- RBAC-based Key Vault access
- Monitoring workspace provisioning
- Free-tier-aware architecture decisions
- Enterprise documentation

## Project Summary
This project implements the foundation of a secure Azure multi-tier application platform. It includes a frontend tier, backend API tier, isolated database subnet design, network security groups, containerized workloads, container registry integration, Key Vault-based secret management, and monitoring architecture.

## Troubleshooting Log
| Issue | Resolution |
|---|---|
| Azure CLI missing | Installed Azure CLI manually |
| Docker missing | Installed Docker and enabled service |
| ACR provider missing | Registered Microsoft.ContainerRegistry |
| ACI provider missing | Registered Microsoft.ContainerInstance |
| ACI OS type error | Added `--os-type Linux` |
| ACI CPU/memory error | Added `--cpu 1 --memory 1` |
| Key Vault forbidden | Assigned Key Vault Secrets Officer role |
| App Insights registration delay | Documented monitoring design and continued |

## Files
- index.html
- Dockerfile.frontend
- app.py
- requirements.txt
- Dockerfile.backend
- monitoring-app.py
- security-design-notes.md
- application-gateway-design.md
- architecture-overview.md
