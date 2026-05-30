# GRC DevSecOps Compliance Pipeline

Automated shift-left compliance pipeline that scans AWS infrastructure-as-code
for security violations on every push, blocking non-compliant deployments before
they reach production.

## What It Does

Scans Terraform IaC using Checkov on every git push via GitHub Actions. Detects
and blocks non-compliant AWS infrastructure. Maps findings to ISO 27001 Annex A
controls and UK GDPR obligations.

## Violations Detected

| Finding | Severity | Framework Controls | Risk Score |
|---|---|---|---|
| Unencrypted S3 bucket (CKV_AWS_145) | HIGH | ISO 27001 A.8.24, UK GDPR Art. 32 | 15/25 |
| Missing public access block (CKV2_AWS_6) | CRITICAL | ISO 27001 A.8.12, UK GDPR Art. 25 | 20/25 |

## Pipeline Output

Checkov automatically catches violations on every push and fails the build.
See the Actions tab for live scan results.

## Documents

- RISK_REGISTER.md — Corporate risk register with quantitative scoring
- VENDOR_ASSESSMENT.md — Third-party vendor security assessment for AWS EMEA
- main.tf — Intentionally non-compliant Terraform demonstrating real-world violations

## Framework Coverage

ISO 27001:2022 Annex A, UK GDPR Articles 25 and 32, NIST CSF 2.0
