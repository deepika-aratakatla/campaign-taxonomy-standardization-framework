# 📂 Campaign Taxonomy Standardization Framework

## Overview

The Campaign Taxonomy Standardization Framework is designed to establish a consistent and scalable naming convention across multiple digital marketing platforms, enabling reliable reporting, attribution, governance, and cross-channel performance analysis.

Organizations running campaigns across Google Ads, Meta Ads, DV360, CM360, TikTok, LinkedIn, Amazon Advertising, and other DSPs often face challenges due to inconsistent campaign naming structures. This framework provides standardized taxonomy rules, validation logic, and metadata governance to improve data quality and reporting efficiency.

---

## 🎯 Business Problem

Marketing campaigns are often created independently by different teams, agencies, and platforms, resulting in inconsistent naming patterns.

### Example

#### Google Ads

```text
Search_Brand_US_Philips_Q3_2026
```

#### Meta Ads

```text
PHI_US_FB_Traffic_Q3
```

#### DV360

```text
DV360_Philips_NAM_Awareness_2026
```

These inconsistencies create challenges such as:

- Manual campaign mapping
- Reporting discrepancies
- Poor campaign discoverability
- Data governance issues
- Attribution inaccuracies
- Increased operational effort

---

## 🚀 Project Objectives

- Standardize campaign naming conventions across platforms
- Enforce metadata governance
- Enable automated campaign classification
- Improve reporting consistency
- Reduce manual effort during campaign analysis
- Support scalable data warehouse integration

---

## 🌐 Supported Platforms

- Google Ads
- DV360
- Campaign Manager 360 (CM360)
- Meta / Facebook Ads
- TikTok Ads
- LinkedIn Ads
- Amazon Advertising
- Programmatic DSPs
- CRM/CDP Platforms

---

## 🏗 Solution Architecture

```text
Marketing Platforms
        │
        ▼
Campaign Creation
        │
        ▼
Taxonomy Standards
        │
        ▼
Validation Engine
        │
        ▼
Standardized Metadata
        │
        ▼
Data Warehouse
        │
        ▼
Reporting & Analytics
```

---

## 📝 Campaign Naming Convention

### Standard Format

```text
Platform_Channel_Brand_Region_Market_Objective_Currency_CampaignID
```

### Example

```text
FB_PaidSocial_Philips_NAM_US_Conversions_USD_820804315294108
```

### Naming Components

| Component | Description |
|------------|------------|
| Platform | Google, Meta, TikTok, DV360 |
| Channel | PaidSearch, PaidSocial, Display |
| Brand | Advertiser Name |
| Region | NAM, EMEA, APAC |
| Market | US, UK, IN |
| Objective | Awareness, Traffic, Conversion |
| Currency | USD, GBP, INR |
| Campaign ID | Platform Generated ID |

---

## 📚 Metadata Standards

Required metadata fields:

```text
Platform
Channel
Brand
Region
Market
Objective
Audience
Currency
Campaign_ID
Campaign_Name
```

Optional metadata fields:

```text
Product
Media Agency
Business Unit
Creative Theme
Landing Page Type
```

---

## 🌍 Region Standards

```text
NAM   = North America
EMEA  = Europe, Middle East & Africa
APAC  = Asia Pacific
LATAM = Latin America
```

---

## 🎯 Objective Standards

```text
AW = Awareness
TR = Traffic
CO = Consideration
CV = Conversion
LE = Lead Generation
SA = Sales
```

---

## 📢 Channel Standards

```text
SEA = Paid Search
SOC = Paid Social
DSP = Programmatic Display
VID = Video
RET = Retargeting
EMA = Email Marketing
```

---

## ✅ Validation Framework

The validation engine automatically checks campaign names against predefined business rules.

### Validation Rules

- Required field verification
- Region code validation
- Objective code validation
- Currency validation
- Duplicate ID detection
- Naming format compliance
- Metadata completeness checks

### Sample Valid Campaign

```text
FB_SOC_Philips_NAM_US_CV_USD_820804315294108
```

Status:

```text
PASS
```

### Sample Invalid Campaign

```text
Facebook_Philips_US
```

Status:

```text
FAIL
```

Reason:

```text
Missing required taxonomy components.
```

---

## 🔍 Sample SQL Audit Query

```sql
SELECT
    campaign_name,
    CASE
        WHEN REGEXP_CONTAINS(
            campaign_name,
            r'^[A-Za-z0-9]+(_[A-Za-z0-9]+){7}$'
        )
        THEN 'VALID'
        ELSE 'INVALID'
    END AS taxonomy_status
FROM campaign_master;
```

---

## 📊 Business Benefits

### Reporting

- Standardized reporting across channels
- Reduced manual campaign mapping
- Faster dashboard development

### Data Governance

- Improved metadata quality
- Consistent campaign hierarchy
- Better auditability

### Analytics

- More accurate attribution reporting
- Reliable cross-channel analysis
- Improved budget optimization insights

---

## 📈 KPI Improvements

| Metric | Before | After |
|----------|----------|----------|
| Reporting Accuracy | 82% | 98% |
| Manual Mapping Effort | 15 hrs/week | 2 hrs/week |
| Dashboard Refresh Time | 4 hrs | 30 mins |
| Campaign Classification | Manual | Automated |

---

## 🛠 Technology Stack

### Data Engineering

```text
Python
SQL
BigQuery
Google Cloud Storage
Airflow
```

### Marketing Platforms

```text
Google Ads API
DV360 API
CM360 API
Meta Marketing API
TikTok Ads API
LinkedIn Marketing API
Amazon Advertising API
```

### Reporting

```text
Looker Studio
Power BI
Tableau
```

---

## 📁 Repository Structure

```text
campaign-taxonomy-framework/
│
├── README.md
│
├── taxonomy_rules/
│   ├── platform_mapping.csv
│   ├── region_mapping.csv
│   ├── objective_mapping.csv
│
├── validation_engine/
│   ├── taxonomy_validator.py
│   ├── rules.py
│
├── sql/
│   └── taxonomy_audit.sql
│
├── sample_data/
│   └── campaign_metadata.csv
│
├── dashboards/
│   └── taxonomy_compliance_dashboard.pbix
│
└── docs/
    └── taxonomy_guidelines.pdf
```

---

## 🔮 Future Enhancements

- Automated taxonomy enforcement during campaign creation
- API-based campaign validation service
- Slack/Teams alerting for non-compliant campaigns
- AI-powered campaign classification
- Cross-platform metadata synchronization

---

## 👩‍💻 Author

**Deepika Aratakatla**  
Marketing Data Analyst | Data Engineering | Marketing Analytics

### Skills

- SQL
- Python
- BigQuery
- GCP
- Google Ads
- DV360
- CM360
- Meta Ads
- TikTok Ads
- Campaign Taxonomy Governance
- Marketing Data Warehousing

---

## ⭐ Project Impact

Designed and implemented a scalable Campaign Taxonomy Standardization Framework covering multiple advertising platforms. Automated campaign validation and metadata governance to improve reporting consistency, data quality, attribution analysis, and cross-channel marketing intelligence.
