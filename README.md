# Marketing Analytics Dashboard: Customer Engagement & Campaign Performance

# SQL Server | Power BI | Marketing Analytics

## Project Overview

Marketing teams often struggle with fragmented data spread across customer records, product reviews, campaign logs, and engagement platforms, making it difficult to answer simple business questions like which market is happiest or which campaign actually worked. Developed an interactive Marketing Analytics solution using SQL and Power BI to analyze customer engagement, campaign performance, product ratings, and customer journey behavior across 100 customers and 10 countries. The project was designed to help marketing teams identify satisfaction drivers, engagement patterns, and content performance to support faster, evidence-based decision-making.

Using SQL for data cleaning, segmentation, and aggregation, and Power BI for interactive visualization, the project transforms raw marketing data into actionable business insights that support campaign planning, content strategy, and regional performance improvement.

## Tools & Technologies
SQL Server
Power BI
DAX
Joins
CASE Statements
Aggregate Functions
Data Cleaning
Data Visualization

## Business Problem

The marketing team lacked a centralized system to analyze customer engagement trends, product performance, and campaign effectiveness across different countries, with limited visibility into:
* Which country had the most customers and the highest satisfaction
* Which campaigns and content types were actually driving engagement
* Whether product popularity translated into higher customer ratings
* Whether checkout completion influenced how customers rated products

Without a centralized, data-driven approach, marketing decisions were slow and based on fragmented, manually compiled reports.
The objective of this project was to identify engagement and satisfaction patterns and provide clear recommendations for marketing strategy.

## Dataset Overview
The analysis was conducted on a marketing dataset containing 100 customers, 1,363 product reviews, 20 products, 10 countries, 4,011 customer journey events, and 4,623 engagement records.

## Key Metrics
* Total Customers: 100
* Total Reviews: 1,363
* Total Countries: 10
* Total Products: 20
* Overall Average Rating: 3.69 / 5
* Reviews Rated 4–5 Stars: 61%

## Dashboard Development Approach

The dataset required minimal preprocessing, though two fields (checkout stage and content type) needed case-normalization before analysis could be trusted.
The dashboard was built using:
* SQL Queries (Joins, CASE, GROUP BY, Aggregate Functions)
* Bar Charts
* Column Charts
* Donut Charts
* Slicers & Filters

A total of 9 core analyses were performed across SQL and Power BI:
1. Customer Segmentation
2. Average Rating by Segment
3. Top Countries by Rating
4. Inactive Customers
5. Engagement vs. Rating
6. Checkout Completion vs. Rating
7. Campaign Engagement
8. Content Type Performance
9. Product Popularity vs. Rating

Interactive slicers allow users to dynamically filter the dashboard and explore performance across different countries, segments, and products.

## Key Marketing Insights

### Country-wise Performance
Spain recorded the highest number of customers with **18 customers**, followed by Italy (**12**) and Germany (**11**), with France recording the fewest (**5**). When satisfaction is measured by average rating, **Spain again led at 3.77**, followed by France (**3.75**) and Germany (**3.74**), while **Switzerland recorded the lowest satisfaction at 3.49**, indicating a nearly 0.3-point gap between the strongest and weakest markets.

### Customer Segment Analysis
Adult customers (30–50) represented the largest segment at **46%**, followed by Senior (**30%**) and Young customers (**24%**). Average ratings remained nearly identical across all segments (Adult 3.70, Senior 3.69, Young 3.66), suggesting that age is not a meaningful driver of customer satisfaction.

### Product Performance Analysis
Climbing Rope recorded the highest average rating (**3.91**), followed by Swim Goggles (**3.84**) and Cycling Helmet (**3.80**). In contrast, Boxing Gloves recorded the highest customer journey activity (**224 events**) but did not rank among the top-rated products, indicating that product popularity and customer satisfaction do not always align.

### Campaign Engagement Analysis
Campaign 15 generated the highest engagement with **735,000 views, 145,000 clicks, and 36,000 likes**, outperforming all other campaigns. Click-through rates remained consistent at approximately **20% across all campaigns**, suggesting that reach — not efficiency — was the primary differentiator between top and bottom performing campaigns.

### Content Type Analysis
Blog content recorded the highest engagement with **142,000 likes (27%)**, closely followed by Video (**134,000, 26%**) and Social Media (**139,000, 25%**). Newsletter content recorded the lowest engagement at **115,000 likes (22%)**, making it the weakest-performing content type.

### Checkout Behavior Analysis
Customers who completed checkout rated products at **3.69** on average, compared to **3.68** among customers who did not complete checkout. This negligible difference suggests that purchase completion does not meaningfully influence customer sentiment or review behavior.

## Critical Findings

* Out of **100 customers**, **0 customers** were found inactive, meaning every customer in the dataset had submitted at least one review.
* The analysis identified several performance gaps requiring marketing attention:
* **Switzerland** recorded the lowest average rating at **3.49**, nearly 0.3 points behind top-performing Spain.
* **Newsletter** content underperformed all other content types, generating the fewest likes (**115,000, 22%**).
* **Boxing Gloves** and other high-traffic products did not correspond with the highest-rated products, revealing a gap between engagement and satisfaction.
* A **data quality issue** (inconsistent text casing in the checkout stage field) was found to be undercounting true checkout completions by approximately **95%** in the original query logic.
* A similar casing issue in the **content type** field was fragmenting engagement totals across duplicate categories, understating Blog's true performance lead.

## 📋 Business Recommendations

* Prioritize **Blog** and **Video** content investment over **Newsletter** campaigns, which consistently underperformed across all engagement metrics.
* Investigate operational and product-level differences in lower-satisfaction markets such as **Switzerland**, and evaluate practices from top-performing markets like **Spain** for replication.
* Treat product engagement and product rating as separate KPIs rather than proxies for one another, given the mismatch observed between browsing activity and satisfaction.
* Standardize data entry formatting for categorical fields (e.g., checkout stage, content type) at the source to prevent future case-sensitivity errors from silently skewing business reporting.
* Continue monitoring checkout-to-rating relationships, since purchase completion currently shows no meaningful link to customer sentiment.

## Expected Impact
* Improve marketing budget allocation toward higher-performing content types and campaigns.
* Close the regional satisfaction gap between top and bottom performing markets.
* Reduce reporting errors caused by inconsistent data formatting.
* Increase confidence in engagement metrics as inputs to campaign strategy.
* Enable faster, data-driven marketing decision-making.

## 📈 Dashboard Structure

### KPI Cards
* Total Customers
* Total Reviews
* Overall Average Rating
* Total Countries
* Total Products
* Reviews Rated 4–5 Stars (%)

### Visualizations
**Bar Charts**
* Customers by Country
* Average Rating by Country
* Top 10 Products by Rating

**Column Charts**
* Campaign Engagement (Views, Clicks, Likes)
* Reviews by Rating Distribution
* Average Rating by Customer Segment

**Donut Charts**
* Likes by Content Type
* Customer Segment Distribution

**Clustered Bar Chart**
* Product Popularity by Journey Activity

### Interactive Features

**Slicers**
* Country
* Customer Segment
* Product

## Dashboard Screenshots
Marketing Analytics Dashboard
<img width="964" height="537" alt="Marketing Analytics" src="https://github.com/user-attachments/assets/661676b6-9120-407f-9b3b-24e8117dea51" />

<img width="965" height="538" alt="Marketing Analytics 1" src="https://github.com/user-attachments/assets/2e689200-3286-4bda-a08f-f22e839248be" />

## Repository Contents
Marketing_analytics.sql
Marketing_Analytics.pbix
Dashboard Screenshots
README.md

## Project Outcome
Developed an interactive marketing analytics dashboard capable of identifying satisfaction drivers, engagement patterns, and content performance across countries, segments, and products. The dashboard enables marketing teams to prioritize campaign investment, resolve data quality issues before they mislead reporting, and support data-driven marketing strategy.

# Author

**[Your Name]**

**Skills:** SQL Server • Power BI • DAX • Data Cleaning • Data Visualization • Business Intelligence • Marketing Analytics
