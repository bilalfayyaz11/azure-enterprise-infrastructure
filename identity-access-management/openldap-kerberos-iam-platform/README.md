# OpenLDAP Kerberos Identity Management Platform

## Objectives

This project builds an enterprise-style identity and access management environment using open-source Linux identity services. The goal is to simulate centralized directory services, user and group management, Kerberos authentication, role-based access control, MFA enrollment simulation, audit logging, and validation testing.

## Tools Used

- Ubuntu Server
- OpenLDAP
- LDAP Utilities
- Kerberos KDC
- Kerberos Admin Server
- PAM Google Authenticator
- Linux Auditd
- Bash
- DNS Utilities
- Chrony

## Key Skills Demonstrated

- Centralized identity directory design
- LDAP user and group provisioning
- Kerberos realm configuration and authentication testing
- Role-based access control using LDAP groups
- MFA enrollment workflow simulation
- Security audit logging with auditd
- Enterprise IAM troubleshooting
- Infrastructure validation scripting
- Linux service management with systemd

## Architecture Overview

The environment uses OpenLDAP as the directory backend for storing users, groups, and access roles. Kerberos provides centralized authentication through a local KDC and admin server. RBAC is implemented through LDAP role groups, while auditd monitors identity-related configuration and account changes.

## Directory Structure

```text
dc=lab,dc=local
├── ou=People
│   ├── uid=jsmith
│   ├── uid=agarcia
│   ├── uid=mjohnson
│   ├── uid=swilson
│   ├── uid=rbrown
│   └── uid=llee
└── ou=Groups
    ├── cn=it-department
    ├── cn=hr-department
    ├── cn=finance-department
    ├── cn=administrators
    ├── cn=helpdesk-role
    ├── cn=manager-role
    └── cn=readonly-role
