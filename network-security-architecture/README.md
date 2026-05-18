# Azure Network Security Architecture

## Overview

This project implements a secure multi-tier Azure network architecture using Virtual Networks, segmented subnets, Network Security Groups, and firewall-ready network design.

The architecture separates web, application, and database tiers to enforce controlled traffic flow and reduce exposure across cloud resources.

## Objectives

- Build a segmented Azure Virtual Network
- Create dedicated subnets for web, application, and database tiers
- Configure Network Security Groups for controlled inbound traffic
- Restrict management access to the administrator public IP
- Prepare a dedicated subnet and public IP for Azure Firewall integration
- Validate network security configuration through CLI automation

## Technologies Used

- Microsoft Azure
- Azure CLI
- Azure Virtual Network
- Azure Network Security Groups
- Azure Public IP
- Bash
- jq
- Linux

## Architecture

| Component | Purpose |
|---|---|
| enterprise-vnet | Main private network boundary |
| web-subnet | Public-facing application entry tier |
| app-subnet | Internal application processing tier |
| database-subnet | Restricted data tier |
| AzureFirewallSubnet | Reserved subnet for centralized firewall deployment |
| web-subnet-nsg | Allows HTTP, HTTPS, and restricted SSH |
| app-subnet-nsg | Allows application traffic only from web tier |
| database-subnet-nsg | Allows database traffic only from application tier |

## Security Model

The design follows least-privilege network access:

- Web tier allows HTTP and HTTPS from the internet
- SSH access is restricted to the administrator public IP
- Application tier only accepts traffic from the web subnet on port 8080
- Database tier only accepts traffic from the application subnet on port 3306
- Firewall-ready subnet is reserved using the required AzureFirewallSubnet naming convention

## Validation

Run the validation script:

```bash
./scripts/validate-network-security.sh

