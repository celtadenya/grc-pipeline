# GRC Risk Register

Generated from automated Checkov scan findings.

| Risk ID | Description | Component | Likelihood (1-5) | Impact (1-5) | Score | Controls | Mitigation |
|---|---|---|---|---|---|---|---|
| RSK-001 | Unencrypted S3 bucket storing customer PII | aws_s3_bucket.customer_data | 3 | 5 | 15 High | ISO 27001 A.8.24, UK GDPR Art. 32 | Enforce AES-256 SSE via aws_s3_bucket_server_side_encryption_configuration |
| RSK-002 | Missing public access block on data bucket | aws_s3_bucket.customer_data | 4 | 5 | 20 Critical | ISO 27001 A.8.12, UK GDPR Art. 25 | Add aws_s3_bucket_public_access_block resource with all blocks set to true |

## Risk Scoring

Likelihood x Impact. Score of 15 or above requires immediate remediation.

## Framework Mapping

**ISO 27001 A.8.24** Use of Cryptography: personal data at rest must be encrypted.
**ISO 27001 A.8.12** Data Leakage Prevention: access controls must be explicit, not implicit.
**UK GDPR Article 32** Security of Processing: encryption is a mandatory technical measure.
**UK GDPR Article 25** Data Protection by Design: privacy must be built in by default, not bolted on.
