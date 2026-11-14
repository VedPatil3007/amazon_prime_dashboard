
# Amazon Prime Video Analytics Dashboard

## Project Overview

An end-to-end data analytics project focused on analyzing Amazon Prime Video's content performance, customer viewing behavior, subscription patterns, revenue distribution, and customer engagement.

The objective was to transform raw viewing data into meaningful business insights using Python, PostgreSQL, SQL, and Power BI, enabling better understanding of content preferences, customer behavior, and subscription performance.

## Tech Stack

- **Microsoft Excel** – Initial data inspection and preparation
- **Python (Pandas)** – Data cleaning and preprocessing
- **PostgreSQL** – Data storage and management
- **SQL** – Business problem-solving and data analysis
- **Power BI** – Data modeling, DAX measures, KPI creation, and interactive dashboard development

## Dataset Overview

The dataset contains **20,000 viewing records** with 35 attributes, covering:

- Customer and content information
- Movies, TV shows, and genres
- Subscription plans and monthly subscription fees
- Viewing duration and completion percentage
- Customer ratings and rewatch behavior
- Device usage and streaming quality
- Customer account age and churn risk
- Geographical and payment information

The dataset represents 3,239 unique customers and 750 unique content titles.

## Business Questions Explored

The analysis addressed key business questions across four areas:

### 1. Revenue & Subscription Analysis
- Which subscription plan contributes the highest estimated revenue?
- How are customers distributed across subscription plans?
- Which countries contribute the most customers?
- How does revenue vary across subscription plans and payment methods?
- How does revenue change over time?

### 2. Customer Analysis
- How many unique customers are using the platform?
- Which subscription plan has the largest customer base?
- Which devices are associated with higher viewing time?
- How does customer engagement change over time?
- What is the distribution of customers across churn-risk categories?

### 3. Content Analysis
- Which content type dominates the platform?
- Which genres have the highest number of viewing records?
- Which genres receive the highest customer ratings?
- Which titles attract the most viewing activity?
- Which ratings are most frequently assigned?

### 4. Viewing Behaviour
- What is the average viewing time?
- How much content do customers watch on average?
- How frequently do customers rewatch content?
- How does viewing behaviour vary across devices and subscription plans?

## Key Insights & Business Interpretation

### 1. Premium Subscription Leads Customer Acquisition

The Premium plan has the largest customer base, with **1,886 customers**, making up approximately 58% of all unique customers.

**Business Interpretation:**
Premium represents the largest customer segment in the dataset. Understanding what attracts customers to this plan and maintaining its perceived value could help improve customer retention and subscription performance.

### 2. Revenue Performance Is Led by Premium

The dashboard indicates that the Premium plan contributes the largest estimated revenue, approximately **2 million**, out of the reported overall revenue.

**Business Interpretation:**
The Premium subscription tier is an important contributor to the platform's revenue performance. Subscription-level analysis can help evaluate pricing strategies, customer preferences, and opportunities for plan upgrades.

### 3. Mobile Leads Revenue Contribution, While Smart TVs Drive Viewing Time

The dashboard identifies Mobile users as the largest revenue-contributing device segment, with approximately **1.93 million** in reported revenue.

Smart TV users record the highest average viewing time at **84.55 minutes**.

**Business Interpretation:**
Revenue contribution and engagement do not necessarily come from the same device segment. Mobile users represent an important commercial segment, while Smart TV users demonstrate stronger viewing engagement. Both segments deserve attention in device-specific product and user-experience strategies.

### 4. Movies Dominate Content Consumption

Movies account for approximately **64.9% of viewing records**, compared with 35.1% for TV Shows.

Action is the leading genre, with **1,697 viewing records**, followed by Fantasy and Adventure.

**Business Interpretation:**
Movie content and action-oriented genres demonstrate strong viewing demand in this dataset. These patterns can help guide content discovery, recommendation strategies, and future content investment decisions.

### 5. Customer Ratings Indicate Generally Positive Engagement

A rating of **4 stars is the most frequently assigned rating**, appearing in 8,682 viewing records.

**Business Interpretation:**
The predominance of four-star ratings suggests generally positive audience feedback. However, ratings should be analyzed alongside viewing completion and rewatch behaviour to obtain a more complete picture of content satisfaction.

### 6. Customer Growth and Revenue Trends Vary Over Time

The dashboard highlights March as the peak month for customer growth, with 1,682 in the displayed customer-growth metric. It also identifies 2026 as the highest-revenue year, with approximately 3.04 million in reported revenue.

**Business Interpretation:**
Identifying periods of higher customer acquisition and revenue can help businesses investigate successful campaigns, seasonal patterns, and changes in subscription demand.

## Dashboard Features

The Power BI report contains four interactive analytical pages:

| Page | Focus |
|---|---|
| Home | Overall KPIs, customer growth, geographical distribution, and revenue overview |
| Revenue | Revenue trends, subscription-plan contribution, country-wise revenue, and payment methods |
| Customers | Customer distribution, device engagement, average viewing time, and churn-risk segmentation |
| Content | Content-type distribution, genre popularity, ratings, and rewatch behaviour |

Interactive slicers allow users to explore the data by:
- Date and year
- Country and state
- Subscription plan
- Content type and genre
- Device type
- Payment method
- Customer ratings and viewing behaviour

## SQL Analysis

A collection of **20 SQL business queries** was developed using PostgreSQL to investigate customer distribution, subscription performance, content popularity, viewing behaviour, and churn-related patterns.

The queries use aggregations, filtering, grouping, sorting, subqueries, and conditional aggregation to extract business insights from the dataset.

## Business Value

This project demonstrates how raw customer and viewing data can be transformed into business-oriented insights.

The analysis helps identify:
- The subscription tier contributing most to estimated revenue.
- Customer segments with the largest platform presence.
- Content categories attracting the highest viewing activity.
- Devices associated with stronger customer engagement.
- Viewing and rating patterns that can support content strategy.
- Customer churn-risk segments requiring further investigation.

## Disclaimer

This project uses a sample dataset for educational and analytical purposes. The revenue figures are based on subscription-fee fields in the dataset and should be treated as estimated revenue rather than verified financial transactions. The findings represent patterns in the supplied dataset and are not claims about Amazon's actual business performance.

---
## 👨‍💻 Author

**Ved Patil** | [LinkedIn](https://linkedin.com/in/vedpatil3076/)

Aspiring Data Analyst | Business Intelligence Enthusiast  
**Project:** Amazon Prime Video Analytics Dashboard  
**Tools:** Excel | Python | Pandas | PostgreSQL | SQL | Power BI
