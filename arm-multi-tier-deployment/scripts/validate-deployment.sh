#!/bin/bash

RESOURCE_GROUP="lab2-rg"

echo "===== ARM Deployment Validation ====="

echo ""
echo "1. Checking Virtual Networks..."
az network vnet list \
  --resource-group $RESOURCE_GROUP \
  --output table

echo ""
echo "2. Checking Subnets..."
az network vnet subnet list \
  --resource-group $RESOURCE_GROUP \
  --vnet-name lab2-dev-vnet \
  --output table

echo ""
echo "3. Checking Network Security Groups..."
az network nsg list \
  --resource-group $RESOURCE_GROUP \
  --output table

echo ""
echo "4. Checking NSG Rules..."
az network nsg rule list \
  --resource-group $RESOURCE_GROUP \
  --nsg-name lab2-dev-web-nsg \
  --output table

echo ""
echo "5. Checking Public IP..."
az network public-ip list \
  --resource-group $RESOURCE_GROUP \
  --output table

echo ""
echo "===== Validation Complete ====="
