# Marketing Campaign Analytics Dashboard

**Objective:** Analyse multi-channel campaign performance to drive smarter budget allocation and improve ROI.

---

## Overview
An end-to-end interactive Power BI dashboard built on **7,617 campaign records** to measure and compare marketing effectiveness across **Email, SMS, Social, and Push** channels. Designed to help marketing teams identify top-performing channels, optimise budget allocation, and improve customer engagement outcomes.

---

## Tech Stack
- **Power BI Desktop** — Dashboard development, DAX measures, interactive slicers
- **SQL (MySQL)** — Data structuring, filtering, and advanced segmentation analysis
- **Microsoft Excel** — Data cleaning, validation, and preparation
- **DAX** — Custom KPI measures (Open Rate %, CTR %, Conversion Rate %, Cost per Response)

---

## Data Source
CRM-style dataset mirroring enterprise campaign data structures  
**7,617 records | Jan 2024 – Jun 2024**  
Fields: Record ID, Date, Channel, Customer Segment, Campaign Name, Messages Sent, Opened, Clicked, Converted, Cost (INR), Revenue (INR)

---

## Key Features
- **4 KPI Cards:** Total Messages Sent, Open Rate %, CTR %, Conversion Rate %
- **Monthly Trends:** Bar + Line combo chart tracking volume and CTR over time
- **Channel Comparison:** CTR % and Conversion Rate % across all 4 channels
- **Segment Analysis:** Conversions by customer segment
- **Cost Efficiency:** Cost per Response by Channel
- **Campaign Performance Table:** Full summary with revenue per campaign
- **Interactive Filtering:** Slicers for Channel, Month, and Customer Segment

---

## Business Problem
Marketing teams often distribute budget across multiple channels without clear visibility into which channel actually drives conversions. This dashboard provides a unified performance view — enabling channel comparison, weak campaign identification, and data-driven budget reallocation.

---

## Key Questions Answered
- Which channel delivers the highest Click-Through Rate?
- Which campaign drove the most conversions?
- Which customer segment converts best?
- Which channel offers the lowest Cost per Response?
- How has CTR % trended month over month?
- Where should budget be reallocated for maximum ROI?

---

## Business Impact & Insights

| Insight | Finding | Action |
|---------|---------|--------|
| **Email outperforms SMS** | Email CTR (21.8%) is **2× higher** than SMS (11.1%) | Shift focus to Email creative optimisation |
| **Email conversion dominance** | Email Conversion Rate (1.1%) is **5× better** than SMS (0.2%) | Prioritise Email list growth |
| **Push is most cost-efficient** | Lowest Cost per Response at **₹1.1 per click** | Increase Push campaign volume |
| **Social is lowest ROI** | Highest cost per response at **₹7.1** | Reduce Social spend or re-target |
| **High Value segment concentration** | Drives **34% of all conversions** despite smallest group | Protect and expand this segment |
| **Budget reallocation recommendation** | Reallocate **20% of SMS budget to Email** for Q3 | Projected to improve overall conversion rate by **~0.3pp** |

---

## Advanced SQL Insight
**Segmentation Deep-Dive:** SQL analysis revealed that the **New Customer segment has the highest conversion rate (0.66%)**, despite the High Value segment driving 37% of total conversions by volume. This suggests **untapped potential in new customer acquisition campaigns** — an opportunity not visible at the dashboard level alone.

---

## Dashboard Preview
<img width="692" height="385" alt="Screenshot 2026-08-04 144111" src="https://github.com/user-attachments/assets/685a1231-b819-4952-8866-fbee0cd35898" />


---

## Author
**Arpit Mishra**  
[LinkedIn](https://www.linkedin.com/in/arpit-mishra07) | [GitHub](https://github.com/arpitaimmishra-rgb)
