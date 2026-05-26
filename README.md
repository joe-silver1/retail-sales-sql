# Retail Sales SQL Analysis

## Business Context
This project analyses transactional data from a UK-based online retailer to answer key commercial questions around revenue performance, geographic trends, and monthly growth patterns. The analysis was completed entirely in SQL using PostgreSQL.

## Dataset
- **Source:** UCI Machine Learning Repository — Online Retail Dataset
- **Raw rows:** 541,909 transactions
- **Clean rows:** 397,880 (after removing cancellations, 
  nulls and invalid records)
- **Period:** December 2010 — December 2011
- **Key columns:** Invoice number, product, quantity, 
  unit price, customer ID, country

## Tools Used
- PostgreSQL
- VS Code + SQLTools extension
- Git / GitHub

## Files
| File | Description |
|---|---|
| 01_cleaning.sql | Removes cancellations, NULL customers and invalid rows. Creates clean_sales view |
| 02_revenue_by_country.sql | Total revenue, unique customers and average revenue per customer by country |
| 03_monthly_revenue_trends.sql | Monthly revenue totals with month-on-month growth percentage |

## Key Findings

- **The UK dominates total revenue** — generating £7.3M across 3,920 
  customers, accounting for the vast majority of global sales
- **EIRE (Ireland) has the highest average revenue per customer** — 
  at £88,515 per customer despite only having 3 customers, suggesting 
  a small number of very high-value wholesale buyers
- **The Netherlands is the second most valuable market** on a per-customer basis at £31,716 average spend, despite modest total revenue of £285k
- **Overall revenue grew strongly** across the full period, rising from 
  £572k in December 2010 to £1.16M by November 2011
- **Seasonal dips are recurring** — February and April consistently show month-on-month revenue declines, likely reflecting post-Christmas and post-Easter spending slowdowns typical in UK retail
- **December 2011 data is incomplete** — the dataset ends before month 
  end, making the -55.4% December figure misleading and not reflective 
  of true performance

## Data Cleaning Decisions
- Removed 144,029 rows (26.6% of raw data) through cleaning
- Cancelled orders identified by invoice numbers prefixed with 'C' 
  and excluded
- Rows with NULL customer IDs removed as they cannot be attributed 
  to specific customers
- Negative quantities and zero unit prices excluded as they represent 
  data entry errors

## Skills Demonstrated
- Data cleaning and validation using WHERE filters and views
- Aggregation and grouping (SUM, COUNT DISTINCT, GROUP BY)
- Date functions (DATE_TRUNC)
- Common Table Expressions (CTEs)
- Window functions (LAG for month-on-month growth calculation)
