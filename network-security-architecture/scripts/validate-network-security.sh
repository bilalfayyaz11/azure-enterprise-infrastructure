#!/bin/bash

RESOURCE_GROUP="network-security-rg"
VNET_NAME="enterprise-vnet"

echo "===== Azure Network Security Validation ====="

echo ""
echo "1. Resource inventory"
az resource list --resource-group "$RESOURCE_GROUP" --output table

echo ""
echo "2. Subnet segmentation"
az network vnet subnet list \
  --resource-group "$RESOURCE_GROUP" \
  --vnet-name "$VNET_NAME" \
  --query "[].{Name:name,AddressPrefix:addressPrefix,NSG:networkSecurityGroup.id}" \
  --output table

echo ""
echo "3. Web tier rules"
az network nsg rule list \
  --resource-group "$RESOURCE_GROUP" \
  --nsg-name web-subnet-nsg \
  --output table

echo ""
echo "4. Application tier rules"
az network nsg rule list \
  --resource-group "$RESOURCE_GROUP" \
  --nsg-name app-subnet-nsg \
  --output table

echo ""
echo "5. Database tier rules"
az network nsg rule list \
  --resource-group "$RESOURCE_GROUP" \
  --nsg-name database-subnet-nsg \
  --output table

echo ""
echo "6. Firewall-ready subnet"
az network vnet subnet show \
  --resource-group "$RESOURCE_GROUP" \
  --vnet-name "$VNET_NAME" \
  --name AzureFirewallSubnet \
  --output table

echo ""
echo "===== Validation Complete ====="

