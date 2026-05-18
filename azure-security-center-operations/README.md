# Azure Security Center Operations and NSG Security Assessment

## Objectives

This project demonstrates cloud security posture assessment and operational security analysis using Microsoft Azure Defender for Cloud and Azure networking security controls.

The environment was inspected using Azure CLI to evaluate network security groups, virtual network segmentation, security hardening opportunities, and operational response readiness.

## Tools Used

- Microsoft Azure
- Azure CLI
- Azure Defender for Cloud
- Network Security Groups (NSGs)
- Linux
- Bash
- OpenSSH
- nmap
- Apache2

## Key Skills Demonstrated

- Azure cloud security assessment
- Network security group auditing
- Cloud infrastructure inspection
- Azure CLI operational workflows
- Security posture analysis
- Incident response documentation
- Troubleshooting Azure deployment issues
- Security remediation planning
- Infrastructure validation and diagnostics

## Security Areas Reviewed

- NSG rule inventory and analysis
- Public exposure assessment
- Virtual network segmentation
- Security monitoring readiness
- JIT VM access planning
- Security alert response workflows

## Troubleshooting Log

### 1. Missing Azure CLI
Azure CLI was not preinstalled in the lab environment and required manual installation.

### 2. Missing Security Utilities
nmap and apache2 packages were missing and had to be installed manually.

### 3. No Virtual Machines Present
The lab environment contained networking resources only and no deployable compute resources.

### 4. Azure VM Deployment Failure
Attempted VM deployment failed because the Standard_B1s SKU was unavailable in eastus.

### 5. Azure SKU Capacity Restrictions
Additional SKU checks across eastus, eastus2, and centralus returned no unrestricted VM sizes.

### 6. Legacy Linux Networking Tool
The lab referenced netstat, which is deprecated in modern Ubuntu systems. The ss command was used instead.

## Files Included

- README.md
- security-remediation-log.txt
- incident-response-checklist.md
- nsg-inventory.txt
- web-nsg-rules.txt
- app-nsg-rules.txt
- db-nsg-rules.txt
