# Azure Governance Modernization Notes

## Blueprint Status

Azure Blueprints is deprecated and should not be used for new governance implementations.

## Modern Replacement Approach

This project uses a modern governance model based on:

- Azure Policy definitions
- Resource-group scoped policy assignments
- ARM/Bicep-ready compliant deployment patterns
- Compliance reporting through Azure CLI
- Secure-by-default storage configuration

## Governance Controls Implemented

- Storage accounts must require HTTPS traffic.
- Storage accounts must use TLS 1.2 minimum.
- Resources must include Environment and Owner tags.
- Blob public access is disabled on compliant storage accounts.

## Free Subscription Safety

All policy assignments were scoped to a dedicated resource group:

rg-policy-lab

This avoids accidental subscription-wide denial policies and reduces risk in free-tier Azure accounts.

## Recommended Enterprise Upgrade

For production environments, replace legacy Azure Blueprints with:

- Azure Policy initiatives
- Azure Landing Zones
- Bicep modules
- Template Specs
- Deployment Stacks
- Defender for Cloud compliance monitoring
