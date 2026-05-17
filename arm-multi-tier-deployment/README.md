# Azure ARM Multi-Tier Infrastructure Deployment

## Overview

This project demonstrates Infrastructure as Code (IaC) deployment on Microsoft Azure using Azure Resource Manager (ARM) templates.

The deployment provisions a secure multi-tier network architecture with segmented subnets, Network Security Groups (NSGs), and public networking components.

## Objectives

- Deploy Azure infrastructure using ARM templates
- Implement multi-tier network segmentation
- Configure Network Security Groups
- Validate infrastructure deployments
- Automate deployment verification

## Technologies Used

- Microsoft Azure
- Azure CLI
- ARM Templates
- Bash Scripting
- JSON
- Linux

## Architecture

### Components

- Virtual Network
- Web Tier Subnet
- Application Tier Subnet
- Database Tier Subnet
- Network Security Groups
- Public IP

## Security Design

| Tier | Access Rules |
|---|---|
| Web Tier | HTTP + SSH |
| App Tier | Only traffic from Web subnet |
| Database Tier | Only MySQL from App subnet |

## Validation Workflow

The project includes:
- ARM template validation
- What-if deployment previews
- Automated deployment verification scripts

## Skills Demonstrated

- Infrastructure as Code
- Azure Networking
- Azure Security
- ARM Template Development
- Cloud Automation
- Azure CLI Operations

## Project Structure

```text
Lab-02-ARM-IaC/
├── templates/
├── parameters/
├── scripts/
├── troubleshooting/
├── diagrams/
└── screenshots/
