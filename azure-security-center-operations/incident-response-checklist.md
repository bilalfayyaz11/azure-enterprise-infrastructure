# Cloud Security Incident Response Checklist

## 1. Initial Triage
- Identify alert severity.
- Confirm affected resource.
- Record alert timestamp.
- Capture alert description and recommended action.
- Check whether the alert is active, resolved, or repeated.

## 2. Identity and Access Review
- Review recent login activity.
- Look for failed login attempts.
- Confirm whether access came from expected users and locations.
- Disable or rotate suspicious credentials if compromise is suspected.

## 3. Network Investigation
- Review NSG inbound and outbound rules.
- Check for exposed SSH, RDP, HTTP, or database ports.
- Verify whether administrative access is restricted to trusted IP ranges.
- Confirm whether public IP exposure is required.

## 4. Host Investigation
- Check running processes.
- Review listening ports.
- Review authentication logs.
- Check recently modified files.
- Validate installed packages and services.

## 5. Web Attack Investigation
- Review web server access logs.
- Look for SQL injection patterns.
- Look for directory traversal attempts.
- Check for repeated failed admin endpoint requests.

## 6. Containment
- Restrict inbound NSG rules.
- Disable exposed services.
- Isolate affected VM if needed.
- Revoke suspicious access tokens or credentials.

## 7. Recovery
- Patch vulnerable packages.
- Restore clean configuration.
- Re-enable required services securely.
- Validate monitoring and alerting.

## 8. Post-Incident Review
- Document root cause.
- Document timeline.
- Update security rules.
- Improve alert tuning.
- Add lessons learned to the response runbook.
