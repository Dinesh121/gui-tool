# Security, governance, compliance, and zero trust

Generated bundles include CAF-style tags plus **compliance_framework** and **network_segmentation** (zero-trust exposure intent).

## Before apply
- Map **compliance_framework** to the policy initiatives you enable (CIS, ISO 27001, SOC 2, NIST, FedRAMP, PCI-DSS).
- Align **network_segmentation** with Private Link, private endpoints, and NSGs; avoid public ingress for **restricted** data_classification.
- Enable **Microsoft Defender for Cloud** and route **diagnostics** to a Log Analytics workspace for production.
- Prefer **managed identities** and **RBAC** over keys and connection strings in configuration.
- Store secrets in **Key Vault** with soft delete and purge protection where policy requires.

## Zero trust (Microsoft principles)
1. **Verify explicitly** — strong authentication (Entra ID), least-privilege RBAC, conditional access.
2. **Least privilege** — narrow scopes; use ABAC where available.
3. **Assume breach** — micro-segmentation, encryption in transit and at rest, monitoring and automated response.

## Compliance
- Use **Azure Policy** assignments at subscription or management group to enforce tagging, encryption, and network rules.
- Retain evidence (change records, risk acceptance) for regulated workloads.
