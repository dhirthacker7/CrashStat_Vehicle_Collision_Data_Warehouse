# **CrashStat: Motor Vehicle Collision Analysis**

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
[NYC Crash Report Data | NYC Open Data](https://data.cityofnewyork.us/Public-Safety/Motor-Vehicle-Collisions-Crashes/h9gi-nx95/about_data)

### **Chicago**
[Chicago Crash Report Data | City of Chicago Data Portal](https://data.cityofchicago.org/Transportation/Traffic-Crashes-Crashes/85ca-t3if/about_data)

### **Austin**
[Austin Crash Report Data | City of Austin](https://data.austintexas.gov/Transportation-and-Mobility/Austin-Crash-Report-Data-Crash-Level-Records/y2wy-tgr5/about_data)

---

## **Architecture**

```mermaid
graph TB
    subgraph "Data Sources"
        A1[NYC Open Data Portal]
        A2[Chicago Data Portal]
        A3[Austin Data Portal]
    end
    
    subgraph "Data Profiling"
        B1[Python ydata-profiling]
        B2[Alteryx Designer]
    end
    
    subgraph "Staging Layer - SQL Server"
        C1[stg_nyc_collisions]
        C2[stg_chicago_collisions]
        C3[stg_austin_collisions]
    end
    
    subgraph "ETL Processing - Talend Studio"
        D1[Extract & Transform]
        D2[Data Cleansing]
        D3[Standardization]
        D4[Load to DW]
    end
    
    subgraph "Data Warehouse - SQL Server/Snowflake"
        E1[Fact Tables]
        E2[fact_collision]
        E3[Dimension Tables]
        E4[dim_date<br/>dim_location<br/>dim_vehicle<br/>dim_contributing_factor<br/>dim_person]
    end
    
    subgraph "Business Intelligence Layer"
        F1[Power BI Dashboards]
        F2[Tableau Dashboards]
    end
    
    subgraph "End Users"
        G1[Traffic Planners]
        G2[Safety Analysts]
        G3[Policy Makers]
    end
    
    A1 --> B1
    A2 --> B1
    A3 --> B1
    
    A1 --> B2
    A2 --> B2
    A3 --> B2
    
    B1 --> C1
    B1 --> C2
    B1 --> C3
    
    B2 --> C1
    B2 --> C2
    B2 --> C3
    
    C1 --> D1
    C2 --> D1
    C3 --> D1
    
    D1 --> D2
    D2 --> D3
    D3 --> D4
    
    D4 --> E2
    E2 --> E1
    E4 --> E3
    E1 -.-> E3
    
    E1 --> F1
    E3 --> F1
    E1 --> F2
    E3 --> F2
    
    F1 --> G1
    F1 --> G2
    F1 --> G3
    F2 --> G1
    F2 --> G2
    F2 --> G3
    
    style A1 fill:#e1f5ff
    style A2 fill:#e1f5ff
    style A3 fill:#e1f5ff
    style B1 fill:#fff4e1
    style B2 fill:#fff4e1
    style C1 fill:#e8f5e9
    style C2 fill:#e8f5e9
    style C3 fill:#e8f5e9
    style D1 fill:#f3e5f5
    style D2 fill:#f3e5f5
    style D3 fill:#f3e5f5
    style D4 fill:#f3e5f5
    style E1 fill:#fff3e0
    style E2 fill:#fff3e0
    style E3 fill:#fff3e0
    style E4 fill:#fff3e0
    style F1 fill:#e0f2f1
    style F2 fill:#e0f2f1
    style G1 fill:#fce4ec
    style G2 fill:#fce4ec
    style G3 fill:#fce4ec
```

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

## **Dashboard**

### **1. Overview and Temporal Analysis**
Displays total accident counts by city (3.04M total), severity breakdown (4,964 injuries, 893K total injury count), and time-based analysis showing seasonal trends. The central visualization reveals peak accident periods throughout the year with injury vs. fatal comparisons.
![Accident Trends](https://github.com/user-attachments/assets/9f011d3f-e3e0-45d5-89eb-a4dc0bc273b7)

---

### **2. Geographic and Pedestrian Analysis**
Features an interactive map highlighting collision hotspots across the three cities, motor vehicle deaths and injuries by location, and pedestrian accident trends over time. Shows concentration of accidents in urban centers and tracks pedestrian involvement patterns.
![High-Risk Areas](https://github.com/user-attachments/assets/bf9681c3-5e81-49d8-90b3-cff7767027ad)

---

### **3. Contributing Factors Analysis**
Comprehensive breakdown of the most common contributing factors leading to accidents. Lists top causes including driver inattention, failure to yield, and following too closely. Shows accident counts by data source and identifies the top 5 street names with highest accident frequency (1,695 motor vehicle deaths, 466K person vehicle injuries).
![Causes of Accidents](https://github.com/user-attachments/assets/bc404519-4e70-48df-9195-db5610c16388)

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
