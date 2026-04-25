# Running Performance Analysis

## Project Description

This project analyzes a runner’s performance over time using Strava activity data. The goal is to determine whether performance improves or declines and what factors may explain the trend.

## Data Processing Pipeline

- Raw activity data was extracted from Strava.
- Data was cleaned and transformed using Python (pandas).
- Weekly aggregates were created (distance, pace, elevation).
- Data was stored and queried using MySQL.
- Final insights were visualized using Power BI.

## Project Structure
running-performance-analysis/
│
├── data/ # Raw and processed datasets
├── notebooks/ # Jupyter notebooks with analysis
├── sql/ # SQL queries
├── dashboard/ # Power BI dashboard file
├── images/ # Dashboard screenshots
└── README.md

## Tools
- Python (data cleaning & analysis)
- MySQL (data storage & querying)
- Power BI (visualization)

## Key Metrics

- Pace (min/km)
- Distance (km)
- Elevation per km (difficulty)

## Key Insights

- Performance improved until 2020, reaching peak performance.
- After 2020, a consistent decline in pace is observed.
- This decline is not explained by increased training volume, as average weekly distance decreases in recent years.
- While elevation affects pace, it does not fully explain the performance drop.

## Dashboard 

![Dashboard](images/dashboard_image.png)


The Power BI dashboard visualizes:
- Performance trends over time
- Training load (distance)
- Relationship between pace and difficulty

## How to Run

1. Load the dataset from the `data/` folder.
2. Run the analysis in the Jupyter notebook (`notebooks/analysis.ipynb`).
3. Execute SQL queries from `sql/queries.sql` in MySQL.
4. Open the Power BI file (`dashboard/dashboard.pbix`) to explore the dashboard.

## Limitations

- The dataset does not include detailed training context (e.g. intervals, terrain type, fatigue).
- Heart rate data is incomplete and was not used in the final analysis.
- Results are based on aggregated weekly data, which may hide variability within individual runs.

## Data Source: 

Personal running activity based on a runner's data exported from Strava.

## Author

George Konstantopoulos
