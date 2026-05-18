# Holistic Azure Solution Architecture

## Overview
This project designs and partially implements a secure multi-tier Azure application platform using networking, containers, identity, secrets management, monitoring, and governance controls.

## Implemented Components
- Azure Resource Group
- Virtual Network
- Frontend subnet
- Backend subnet
- Database subnet
- Network Security Groups
- NSG subnet associations
- Azure Container Registry
- Frontend container image
- Backend container image
- Azure Container Instances
- Azure Key Vault
- Log Analytics Workspace

## Cost-Safe Decisions
Application Gateway, PostgreSQL, and some monitoring features were documented instead of fully deployed to avoid free-tier cost and provider-registration delays.

## Security Design
- Frontend receives public HTTP/HTTPS traffic
- Backend accepts traffic only from frontend subnet
- Database accepts traffic only from backend subnet
- Key Vault stores demo secrets
- Managed Identity planned for production-grade secret access

## Troubleshooting
- Azure CLI missing in fresh environment
- Docker missing in fresh environment
- Container Registry provider required registration
- Container Instance provider required registration
- ACI required explicit Linux OS type
- ACI required explicit CPU and memory
- Key Vault required RBAC role assignment
- Application Insights registration delayed
