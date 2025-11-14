# **CrashStat: Motor Vehicle Collision Analysis**

## **Overview**
CrashStat is a comprehensive data analytics project that examines motor vehicle collision patterns to identify risk factors and accident hotspots. By leveraging modern data engineering practices and cloud-based technologies, this project transforms raw collision data into actionable intelligence for traffic safety improvement and urban planning decisions.

---

## **Table of Contents**
- [Overview](#overview)
- [Objectives](#objectives)
- [Data Sources](#data-sources)
- [Architecture](#architecture)
- [Implementation Workflow](#implementation-workflow)
  - [Phase 1: Data Acquisition and Profiling](#phase-1-data-acquisition-and-profiling)
  - [Phase 2: ETL Pipeline Development](#phase-2-etl-pipeline-development)
  - [Phase 3: Data Warehousing](#phase-3-data-warehousing)
  - [Phase 4: Analytics and Visualization](#phase-4-analytics-and-visualization)
- [Key Insights](#key-insights)
- [Dashboards](#dashboards)
- [Technologies Used](#technologies-used)
- [Future Enhancements](#future-enhancements)

---

## **Objectives**
The primary goal of CrashStat is to **analyze collision data systematically** and provide **data-driven recommendations** for enhancing road safety. Specific objectives include:

- **Identifying collision hotspots** across different urban areas
- **Analyzing temporal patterns** to determine high-risk time periods
- **Understanding contributing factors** leading to accidents
- **Building scalable data pipelines** for continuous data ingestion and processing
- **Creating interactive visualizations** for stakeholders and policymakers
- **Optimizing query performance** through efficient data warehouse design

---

## **Data Sources**
The dataset is sourced from publicly available **Department of Transportation (DoT) data portals**:

### **New York City**
- [NYC Motor Vehicle Collisions - Crashes](https://data.cityofnewyork.us/Public-Safety/Motor-Vehicle-Collisions-Crashes/h9gi-nx95/about_data)

### **Chicago**
- [Chicago Traffic Crashes - Crashes](https://data.cityofchicago.org/Transportation/Traffic-Crashes-Crashes/85ca-t3if/about_data)

### **Austin**
- [Austin Crash Report Data - Crash Level Records](https://data.austintexas.gov/Transportation-and-Mobility/Austin-Crash-Report-Data-Crash-Level-Records/y2wy-tgr5/about_data)

---

## **Architecture**
The project follows a **cloud-based data warehousing architecture** with the following components:

```
Raw Data → AWS S3 → ETL Processing (Talend/Alteryx) → Snowflake DW → Power BI Dashboards
```

**Key Components:**
- **Storage Layer**: AWS S3 for raw data storage
- **Processing Layer**: Talend Studio and Alteryx for ETL operations
- **Data Warehouse**: Snowflake (star schema design)
- **Analytics Layer**: Power BI for visualization and reporting
- **Supporting Tools**: Python (Pandas, ydata-profiling) for data profiling

---

## **Implementation Workflow**

### **Phase 1: Data Acquisition and Profiling**
**Objective**: Assess data quality and understand dataset characteristics

**Activities**:
- Downloaded collision datasets from multiple open data sources
- Conducted comprehensive data profiling using:
  - **Python (ydata-profiling)** for statistical analysis
  - **Alteryx** for visual data exploration
- Identified data quality issues:
  - Missing values in critical fields (location coordinates, timestamps)
  - Inconsistent data types and formats
  - Duplicate records and outliers
  - Multi-valued attributes requiring normalization

**Deliverables**:
- Data profiling reports with statistical summaries
- Data quality assessment documentation
- Schema comparison across different data sources

---

### **Phase 2: ETL Pipeline Development**
**Objective**: Build robust data pipelines for data extraction, transformation, and loading

**Activities**:
- Designed ETL workflows using **Talend Studio**
- Implemented data cleansing procedures:
  - Standardized date/time formats
  - Handled missing values with imputation strategies
  - Removed duplicate records
  - Normalized multi-valued attributes
- Created staging tables in **SQL Server** with audit columns:
  - `LoadTimestamp`: Records when data was loaded
  - `SourceFileName`: Tracks data lineage
  - `ProcessStatus`: Monitors ETL execution status

**Deliverables**:
- Talend job workflows with documentation
- Data transformation rules and business logic
- ETL execution logs and performance metrics

---

### **Phase 3: Data Warehousing**
**Objective**: Design an optimized data warehouse for analytical queries

**Activities**:
- Implemented **star schema** design in Snowflake
- Created dimension tables:
  - `dim_date`: Temporal hierarchy (year, quarter, month, day, hour)
  - `dim_location`: Geographic information and zone classifications
  - `dim_weather`: Weather and environmental conditions
  - `dim_vehicle_type`: Vehicle classification
  - `dim_factor`: Contributing factors and causes
- Developed fact table:
  - `fact_collision`: Core collision metrics and foreign keys
- Applied **Slowly Changing Dimension (SCD)** Type 2 for tracking historical changes
- Optimized with clustering keys and materialized views

**Deliverables**:
- Entity-Relationship Diagram (ERD)
- DDL scripts for all tables
- Data validation queries and row count reconciliation

---

### **Phase 4: Analytics and Visualization**
**Objective**: Transform data into actionable insights through interactive dashboards

**Activities**:
- Connected Power BI to Snowflake data warehouse
- Developed multiple analytical dashboards:
  - Temporal analysis of collision trends
  - Geographic heatmaps of high-risk zones
  - Contributing factor breakdowns
  - Severity and injury statistics
- Implemented drill-down capabilities and interactive filters
- Published dashboards for stakeholder access

**Deliverables**:
- Power BI workbooks (.pbix files)
- Dashboard screenshots with explanations
- User guide for dashboard navigation

---

## **Key Insights**
Through comprehensive analysis, CrashStat has uncovered several critical findings:

- **Geographic Patterns**: Concentrated collision clusters in downtown urban corridors and major intersections
- **Temporal Trends**: Elevated accident rates during evening rush hours (5-7 PM) and Friday evenings
- **Seasonal Variations**: Higher collision frequency during winter months due to adverse weather
- **Primary Factors**: Driver distraction and failure to yield are leading contributors
- **High-Risk Demographics**: Certain vehicle types show disproportionate involvement in severe accidents
- **Weather Impact**: Rain and fog conditions correlate with increased accident severity

---

## **Dashboards**

### **1. Accident Trends Over Time**
![image](https://github.com/user-attachments/assets/9f011d3f-e3e0-45d5-89eb-a4dc0bc273b7)

**Description**: This time-series visualization tracks collision counts across multiple temporal dimensions. Users can analyze daily, weekly, monthly, and yearly patterns to identify peak accident periods. The dashboard reveals seasonal fluctuations and long-term trends, enabling proactive resource allocation during high-risk periods.

---

### **2. High-Risk Areas**
![image](https://github.com/user-attachments/assets/bf9681c3-5e81-49d8-90b3-cff7767027ad)

**Description**: An interactive geographic heatmap highlighting collision concentration zones. This visualization uses color intensity to represent accident density, making it easy to identify dangerous intersections and road segments. The map supports zooming and filtering by accident severity, helping traffic planners prioritize safety improvements.

---

### **3. Causes of Accidents**
![image](https://github.com/user-attachments/assets/bc404519-4e70-48df-9195-db5610c16388)

**Description**: A comprehensive breakdown analyzing primary and secondary contributing factors. This dashboard categorizes accidents by cause (e.g., speeding, distraction, weather conditions) and displays their relative frequencies. The insights guide targeted safety campaigns and enforcement strategies.

---

### **4. Peak Accident Times**
![image](https://github.com/user-attachments/assets/9d8647a4-b847-4c1f-a2e1-13d53a9b909e)

**Description**: This dashboard examines accident distribution by hour of day and day of week. Heat grid visualizations reveal clear patterns in collision timing, such as rush-hour spikes and weekend variations. These insights are valuable for traffic patrol scheduling and public awareness campaigns.

---

## **Technologies Used**

| Category | Tools & Technologies |
|----------|---------------------|
| **Programming Languages** | Python (Pandas, Matplotlib) |
| **Data Profiling** | ydata-profiling, Alteryx |
| **ETL Tools** | Talend Studio, Alteryx Designer |
| **Cloud Storage** | AWS S3 |
| **Data Warehouse** | Snowflake, SQL Server |
| **Visualization** | Power BI |
| **Version Control** | Git, GitHub |

---

## **Future Enhancements**
To expand the capabilities of CrashStat, the following improvements are planned:

1. **Real-Time Data Integration**: Implement streaming pipelines for near real-time collision data ingestion
2. **Predictive Analytics**: Develop machine learning models to forecast accident likelihood based on various factors
3. **Advanced Geospatial Analysis**: Integrate road network topology data for more granular location analysis
4. **Mobile Dashboard**: Create responsive dashboards accessible on mobile devices for field personnel
5. **Automated Alerting**: Set up notification systems for abnormal accident patterns
6. **Cross-City Comparison**: Expand dataset to include multiple cities for comparative analysis
7. **Weather API Integration**: Incorporate live weather data for enhanced correlation analysis

---

## **Contact**
For questions or collaboration opportunities, please reach out through GitHub Issues or contact me directly.

**Project Repository**: [CrashStat on GitHub](https://github.com/dhirthacker7/CrashStat_Motor_Vehicle_Collision_Analysis)
