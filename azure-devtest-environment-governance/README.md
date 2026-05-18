# Azure DevTest Environment Governance

## Objectives

This project implements an Azure DevTest environment focused on controlled development and testing workflows. It demonstrates how to provision a DevTest Lab resource, apply metadata governance, define reusable software installation artifacts, and document cost-aware infrastructure decisions for free-tier Azure environments.

## Tools Used

- Microsoft Azure
- Azure CLI
- Azure Resource Manager Templates
- Azure DevTest Labs
- Linux
- Bash
- JSON
- Git
- Node.js artifact automation

## Key Skills Demonstrated

- Azure resource group provisioning
- ARM template-based resource deployment
- DevTest Lab environment configuration
- Cloud governance using tags
- Free-tier-aware Azure infrastructure planning
- Linux automation scripting
- Custom DevTest artifact creation
- Git-based artifact repository management
- Troubleshooting Azure CLI and regional capacity issues

## Architecture Overview

The project provisions an Azure DevTest Lab using an ARM template because the Azure CLI environment did not support direct DevTest Lab creation commands. A custom artifact repository was created to define a reusable Linux Node.js installation artifact. Governance tags were applied to support environment ownership, purpose tracking, and cost-control visibility.

## Free-Tier Adaptation

A virtual machine deployment was attempted using the low-cost Standard_B1s size. Azure returned a regional capacity restriction for East US, blocking VM creation. To avoid unnecessary quota waste and possible charges, the deployment result was documented instead of repeatedly retrying unavailable or higher-cost SKUs.

## Troubleshooting Log

| Issue | Cause | Resolution |
|---|---|---|
| Azure CLI missing | Fresh lab environment did not include Azure CLI | Installed Azure CLI using Microsoft installation script |
| `az lab create` unavailable | Current CLI environment does not support DevTest Lab creation through that command | Used ARM template deployment instead |
| DevTest Labs extension unavailable | No `devtestlabs` extension exists in the active Azure CLI extension index | Used `Microsoft.DevTestLab/labs` ARM resource provider |
| `az resource create --tags` failed | Tags were not accepted in the attempted resource create command | Tags were defined inside the ARM template and later updated with `az tag update` |
| `az vm list-sizes` deprecated | Azure recommends using `az vm list-skus` going forward | Used SKU checks and documented deprecation |
| VM creation failed | `Standard_B1s` was unavailable in East US due to regional capacity restrictions | Documented the limitation and avoided unnecessary free-tier cost risk |

## Files Included

```text
devtest-lab-template.json
devtest-lab-validation-report.md
devtest-artifacts/Artifacts/linux-nodejs-install/artifactfile.json
devtest-artifacts/Artifacts/linux-nodejs-install/install-nodejs.sh
