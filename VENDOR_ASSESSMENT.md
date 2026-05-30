# Third-Party Vendor Security Assessment

**Vendor:** Amazon Web Services EMEA SARL
**Service:** Cloud Infrastructure and Data Storage
**Assessment Date:** May 2026
**Assessor:** Celta Denya Hadinata Wijaya

## Assessment Criteria

| Criteria | Status | Evidence | Result |
|---|---|---|---|
| Data Protection | Compliant | ISO 27001:2022 certification valid, SOC 2 Type II report Q4 2025 | PASS |
| Physical Security | Compliant | Biometric access controls, CCTV, 24/7 on-site security per SOC 2 Section 3 | PASS |
| Data Sovereignty | Compliant | Infrastructure provisioned exclusively in eu-west-2 (London) region | PASS |
| Incident Response | Compliant | 72-hour breach notification SLA confirmed in service agreement | PASS |
| Encryption at Rest | Conditional | AWS provides encryption capability but customer must configure it | CONDITIONAL |

## Notes

While AWS passes all baseline criteria as a vendor, this assessment identified that encryption at rest is not enabled by default on S3 buckets. This is a customer-side configuration responsibility and is tracked as RSK-001 in the Risk Register.

## Conclusion

AWS EMEA is approved as a cloud infrastructure vendor subject to RSK-001 remediation being completed before production data is stored.
