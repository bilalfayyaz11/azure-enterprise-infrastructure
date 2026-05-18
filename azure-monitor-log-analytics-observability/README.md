# Azure Monitor Operations and Log Analytics

## Objectives

This project implements a cloud monitoring and observability workflow using Azure Monitor and Log Analytics. It demonstrates how to organize monitoring resources, design operational log queries, define alert logic, and create workbook templates for dashboard-based visibility.

## Tools Used

- Microsoft Azure
- Azure CLI
- Azure Monitor
- Log Analytics Workspace
- Kusto Query Language
- Bash
- JSON
- Linux

## Key Skills Demonstrated

- Azure monitoring resource provisioning
- Cloud observability design
- Log Analytics workspace configuration
- KQL query development
- Operational dashboard/workbook design
- Alert condition planning
- Azure CLI troubleshooting
- Quota-safe cloud engineering adaptation

## Architecture

The implementation uses a centralized Log Analytics Workspace as the core observability layer. Application-style JSON logs are stored as structured sample telemetry, while KQL queries define common operational views such as error count, latency trends, slow requests, and alert thresholds.

## Troubleshooting Log

### Azure CLI Missing

The lab environment did not include Azure CLI by default.

Resolution:

Installed Azure CLI using Microsoft’s official installation script and verified authentication with:

