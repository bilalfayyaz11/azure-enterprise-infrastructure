#!/bin/bash

echo "Identity Management Audit Report"
echo "================================"
echo "Generated on: $(date)"
echo ""

echo "LDAP Users:"
ldapsearch -x -LLL -b "ou=People,dc=lab,dc=local" uid | grep "^uid:" | wc -l

echo "LDAP Groups:"
ldapsearch -x -LLL -b "ou=Groups,dc=lab,dc=local" cn | grep "^cn:" | wc -l

echo ""
echo "Recent Account File Changes:"
sudo ausearch -k user_accounts -ts recent 2>/dev/null | head -20
