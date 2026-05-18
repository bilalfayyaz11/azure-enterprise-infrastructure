#!/bin/bash

echo "=== Azure Governance Compliance Report ==="
echo "Generated on: $(date)"
echo ""

echo "=== Subscription ==="
az account show --output table

echo ""
echo "=== Resource Group ==="
az group show --name rg-policy-lab --output table

echo ""
echo "=== Policy Definitions ==="
az policy definition list \
  --query "[?contains(name, 'require')].[name,displayName,policyType]" \
  --output table

echo ""
echo "=== Policy Assignments ==="
SUBSCRIPTION_ID=$(az account show --query id -o tsv)
az policy assignment list \
  --scope "/subscriptions/$SUBSCRIPTION_ID/resourceGroups/rg-policy-lab" \
  --output table

echo ""
echo "=== Deployed Resources ==="
az resource list \
  --resource-group rg-policy-lab \
  --output table

echo ""
echo "=== Storage Security Configuration ==="
az storage account list \
  --resource-group rg-policy-lab \
  --query "[].{Name:name, HTTPS:enableHttpsTrafficOnly, TLS:minimumTlsVersion, BlobPublicAccess:allowBlobPublicAccess, Environment:tags.Environment, Owner:tags.Owner}" \
  --output table

echo ""
echo "=== Policy Compliance State ==="
az policy state list \
  --resource-group rg-policy-lab \
  --output table

echo ""
echo "=== End of Report ==="
