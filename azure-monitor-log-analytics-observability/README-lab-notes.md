# Azure Monitor Operations Lab Notes

## Lab Pivot Reason

The original App Service deployment failed because the Azure subscription has Total VMs quota set to 0. This blocks App Service Plan deployment, including Free/F1 Linux plans.

## Implemented Alternative

A quota-safe Azure Monitor and Log Analytics operations workflow was implemented using:

- Azure Resource Group
- Azure Log Analytics Workspace
- Custom application event logs
- KQL monitoring queries
- Alert rule query logic
- Azure Workbook JSON template
- Resource verification script

## Monitoring Scenarios Covered

- Recent application event analysis
- Error count by service
- Average response time analysis
- Slow request detection
- High latency alert condition
- High error-rate alert condition
- Workbook dashboard design
