#!/bin/bash

echo "Comprehensive Identity Management Test Suite"
echo "==========================================="

echo ""
echo "Test 1: LDAP service"
systemctl is-active slapd && echo "PASS: LDAP service running" || echo "FAIL: LDAP service not running"

echo ""
echo "Test 2: Kerberos KDC"
systemctl is-active krb5-kdc && echo "PASS: Kerberos KDC running" || echo "FAIL: Kerberos KDC not running"

echo ""
echo "Test 3: Kerberos admin server"
systemctl is-active krb5-admin-server && echo "PASS: Kerberos admin server running" || echo "FAIL: Kerberos admin server not running"

echo ""
echo "Test 4: User count"
USER_COUNT=$(ldapsearch -x -LLL -b "ou=People,dc=lab,dc=local" uid | grep "^uid:" | wc -l)
echo "Users found: $USER_COUNT"

echo ""
echo "Test 5: Group count"
GROUP_COUNT=$(ldapsearch -x -LLL -b "ou=Groups,dc=lab,dc=local" cn | grep "^cn:" | wc -l)
echo "Groups found: $GROUP_COUNT"

echo ""
echo "Test 6: RBAC roles"
ldapsearch -x -LLL -b "ou=Groups,dc=lab,dc=local" "(|(cn=helpdesk-role)(cn=manager-role)(cn=readonly-role))" cn memberUid

echo ""
echo "Test 7: Audit service"
systemctl is-active auditd && echo "PASS: auditd running" || echo "FAIL: auditd not running"

echo ""
echo "Validation completed."
