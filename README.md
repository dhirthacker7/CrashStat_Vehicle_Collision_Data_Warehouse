# **CrashStat: Motor Vehicle Collision Analysis**

## **Overview**
CrashStat analyzes motor vehicle collision data from New York, Chicago, and Austin to identify accident patterns, risk factors, and safety insights. The project implements a complete data warehouse solution with ETL pipelines and interactive dashboards to answer critical questions about traffic safety.

---

## **Objectives**

### **Analytical Goals**
- Quantify accident volumes across three cities
- Identify top high-risk areas and most fatal locations
- Analyze injury and fatality statistics by city
- Assess pedestrian involvement and safety
- Examine temporal patterns (time of day, day of week, seasonality)
- Identify common contributing factors

### **Technical Goals**
- Integrate and standardize data from three city datasets
- Build scalable ETL pipelines using Talend
- Design star schema dimensional model
- Implement SCD Type 2 for historical tracking
- Create interactive dashboards in Power BI and Tableau

---

## **Data Sources**

### **New York City**
[Motor Vehicle Collisions - Crashes | NYC Open Data](https://data.cityofnewyork.us/Public-Safety/Motor-Vehicle-Collisions-Crashes/h9gi-nx95/about_data)

### **Chicago**
[Traffic Crashes - Crashes | City of Chicago Data Portal](https://data.cityofchicago.org/Transportation/Traffic-Crashes-Crashes/85ca-t3if/about_data)

### **Austin**
[Austin Crash Report Data - Crash Level Records | City of Austin](https://data.austintexas.gov/Transportation-and-Mobility/Austin-Crash-Report-Data-Crash-Level-Records/y2wy-tgr5/about_data)

---

## **Architecture**

```
Raw Data → Data Profiling → Staging (SQL Server) → ETL (Talend) → 
Dimensional Model → BI Dashboards (Power BI/Tableau)
```

### **Dimensional Model**
- **Fact Table**: `fact_collision`
- **Dimensions**: `dim_date`, `dim_location`, `dim_vehicle`, `dim_contributing_factor`, `dim_person`
- **Features**: Star schema, SCD Type 2, surrogate keys, audit columns

---

## **Implementation**

### **Phase 1: Data Profiling and Staging**
- Profiled data using Python (ydata-profiling) and Alteryx
- Identified quality issues: missing values, inconsistent formats, duplicates
- Created staging tables with audit columns in SQL Server

### **Phase 2: ETL Pipeline and Integration**
- Built ETL workflows in Talend Studio
- Standardized, cleansed, and transformed data
- Loaded dimensional model with SCD Type 2 implementation
- Validated data integrity with SQL queries

### **Phase 3: Business Intelligence**
- Developed dashboards in Power BI and Tableau
- Created interactive visualizations for all analytical goals
- Implemented drill-down and filtering capabilities

---

## **Dashboards**

### **1. Accident Trends Over Time**
![Accident Trends](https://github.com/user-attachments/assets/9f011d3f-e3e0-45d5-89eb-a4dc0bc273b7)

Time-series visualization showing collision patterns across daily, weekly, monthly, and seasonal dimensions.

---

### **2. High-Risk Areas**
![High-Risk Areas](https://github.com/user-attachments/assets/bf9681c3-5e81-49d8-90b3-cff7767027ad)

Geographic heatmap identifying top accident-prone locations across the three cities with drill-down capabilities.

---

### **3. Causes of Accidents**
![Causes of Accidents](https://github.com/user-attachments/assets/bc404519-4e70-48df-9195-db5610c16388)

Breakdown of primary and secondary contributing factors showing most common causes of collisions.

---

### **4. Peak Accident Times**
![Peak Accident Times](https://github.com/user-attachments/assets/9d8647a4-b847-4c1f-a2e1-13d53a9b909e)

Analysis of accident distribution by hour, day of week, and weekday vs. weekend patterns.

---

## **Technologies Used**

| Category | Technologies |
|----------|-------------|
| **Data Profiling** | Python (ydata-profiling), Alteryx |
| **ETL** | Talend Studio |
| **Database** | SQL Server, Snowflake |
| **Visualization** | Power BI, Tableau |
| **Version Control** | Git, GitHub |

---

## **Future Enhancements**
- Real-time data integration with streaming pipelines
- Predictive analytics using machine learning models
- Advanced geospatial analysis with road network data
- Mobile dashboard access for field personnel
- Automated alerting for abnormal accident patterns
- Multi-city expansion for broader analysis
- Weather API integration for real-time correlation

---

## **Project Repository**
[CrashStat on GitHub](https://github.com/dhirthacker7/CrashStat_Motor_Vehicle_Collision_Analysis)
