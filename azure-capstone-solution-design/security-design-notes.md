# Security Design Notes

## Key Vault
Azure Key Vault was created to centralize secret management for the multi-tier application.

Stored demo secrets:
- database-connection-mode
- api-key-placeholder

## RBAC Issue Resolved
The Key Vault initially blocked secret creation because it used Azure RBAC authorization. The logged-in user required the Key Vault Secrets Officer role before secrets could be written.

## Managed Identity Design
A user-assigned managed identity was planned for application-to-Key-Vault authentication.

## Free-Tier / Lab Constraint
Managed Identity registration and propagation can take time in fresh Azure environments. To optimize lab execution time, this step is documented as architecture intent instead of blocking the full project flow.

## Production Recommendation
In production:
- Assign a user-managed identity to backend compute
- Grant only Key Vault Secrets User role
- Avoid hardcoded credentials
- Use RBAC scoped only to the required vault
- Rotate secrets regularly
