# Multi-Tier Azure ARM Architecture

## Overview

This project deploys a multi-tier Azure infrastructure using Azure Resource Manager (ARM) templates.

## Components

- Virtual Network
- Web Subnet
- Application Subnet
- Database Subnet
- Network Security Groups
- Public IP Address

## Security Design

### Web Tier
- Allows HTTP
- Allows SSH

### Application Tier
- Only accepts traffic from Web Tier subnet

### Database Tier
- Only accepts MySQL traffic from Application Tier subnet

## Infrastructure as Code Benefits

- Repeatable deployments
- Consistent infrastructure
- Version-controlled environments
- Faster provisioning
- Reduced manual configuration errors

## Validation

Deployment validation is automated using:
- ARM template validation
- What-if analysis
- Bash deployment verification scripts

