# Amazon Product Review Intelligence System

> Multi-source data integration · Sentiment analysis · SQL analytics · Power BI dashboard

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![NLP](https://img.shields.io/badge/NLP-VADER-8B5CF6?style=flat)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white)

---

## Pipeline Architecture

Raw Data (CSV / API) → ETL & Cleaning (Pandas) → Sentiment Scoring (VADER) → SQL Analytics (MySQL) → Power BI Dashboard

---

## Key Features

- **Multi-source data integration** — merges product metadata, review text, and ratings into a unified schema
- **Sentiment analysis (NLP)** — VADER-based scoring classifies each review as Positive, Neutral, or Negative
- **SQL analytics & window functions** — ranking, rolling averages, and cohort aggregations for deep product insight
- **Power BI dashboard** — interactive report with slicers for category, date range, and sentiment

---

## Tech Stack

| Area | Tools |
|---|---|
| Language | Python 3.x |
| NLP | VADER, NLTK |
| Data Processing | Pandas, NumPy |
| Database | MySQL |
| Visualization | Matplotlib, Seaborn |
| BI Dashboard | Power BI |

---

## Project Structure
---

## Quick Start

```bash
git clone https://github.com/sabarias1999/Amazon-Analytics.git
cd Amazon-Analytics
pip install -r requirements.txt
```

---

## Sample Insights

- Top 10 products by average sentiment score across 50K+ reviews
- Category-level sentiment trend over 12 months
- Review velocity ranking using SQL window functions

---

*Built by [Sabari A S](https://linkedin.com/in/sabari3299) · Open to analyst roles*
