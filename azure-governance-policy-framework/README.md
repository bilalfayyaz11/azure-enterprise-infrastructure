# Azure Governance Policy and Compliance Framework

## Objectives

This project implements a cloud governance and compliance framework using Azure Policy and Azure CLI. It demonstrates how to enforce security standards, validate compliant deployments, and generate governance reports for Azure environments.

## Tools Used

- Microsoft Azure
- Azure CLI
- Azure Policy
- Bash
- JSON
- Linux
- Azure Storage Accounts

## Key Skills Demonstrated

- Azure policy-as-code implementation
- Cloud governance and compliance enforcement
- Resource-group scoped policy assignment
- Secure storage account deployment
- Tagging compliance enforcement
- TLS and HTTPS security control validation
- Compliance reporting automation
- Azure Blueprint modernization awareness

## Governance Controls Implemented

- Required HTTPS traffic for storage accounts
- Required TLS 1.2 minimum for storage accounts
- Required Environment and Owner resource tags
- Disabled blob public access for compliant storage accounts
- Resource-group scoped governance for free-tier safety

## Troubleshooting Log

- Azure CLI was missing and had to be installed manually.
- Policy JSON files had to be recreated after missing-file errors.
- Azure CLI rejected direct file references for policy rules, so JSON was passed using command substitution.
- Azure Blueprints were identified as deprecated and replaced with a modern governance documentation approach.
- Storage accounts were validated for HTTPS, TLS, tags, and public access settings.

## Files Included

- README.md
- require-https-storage.json
- require-storage-tls12.json
- require-tags-policy.json
- generate-compliance-report.sh
- compliance-report.txt
- governance-modernization-notes.md
