# Interactive-Ecommerce-Sales-Insights-with-PostgreSQL-and-Tableau

## Overview
This project focuses on analyzing E-commerce sales data to derive actionable insights using PostgreSQL for database management and Tableau for interactive data visualization. The analysis includes sales trends, customer RFM analysis and geographical sales distribution.

## Key Features:
Data Extraction and Loading:
* Efficient data extraction from kaggle's E-commerce sale data set CSV files.
* Data loading and management using PostgreSQL.

Sales Data Analysis:
* Exploratory data analysis (EDA) of the sales data to identify trends and patterns.
* Calculation of key metrics such as total sales, average order value, and sales growth rates.
* RFM Analysis Recency, Frequency, and Monetary analysis for customer segmentation.

Advanced Visualizations: (Interactive Dashboards in Tableau)
* Line charts showing moving average daily, weekly and monthly sales trends.
* Utilizing user defined parameters to dynamically interact with the dashboard
* Scatter plots visualizing geographical sales distribution maps to analyze sale per country performance.
* Utilizing tooltip to visualize (RFM) Recency, Frequency and Monitary metrics.

## Technologies Used:
* PostgreSQL: For robust database management and complex querying.
* Tableau: For creating interactive and insightful data visualizations.
* SQL: For data manipulation and extraction of insights.

## Project Highlights:
* Provides a deep dive into sales performance through various dimensions.
* Enhances decision-making by identifying key customer segments and sales trends.
* Demonstrates the integration of SQL-based data management with advanced visualization techniques.

## Dashboard Screenshot:
![Screenshot (443)](https://github.com/joshfraim/Interactive-Ecommerce-Sales-Insights-with-PostgreSQL-and-Tableau/assets/104566570/15136290-3110-4f7f-abb7-b01ad43ed386)

## Dashboard Usage Instructions: 
* Navigate to the moving average chart; this chart is the main control of the entire dashboard. Hold and drag to select the date period in the timeline.
* Customize the moving average duration and moving average period controls to select the date range.
* Hover over a country to view a tooltip that shows the RFM analysis.

## Acknowledgments:
* Thanks to [kaggle.com](https://www.kaggle.com/datasets/carrie1/ecommerce-data) for the dataset.
* Utilized libraries: PostgreSQL, Tableau.
