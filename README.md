# Infosys CCD Performance Analytics
SQL Server Medallion Data Architecture to track Infosys Computer Communication Division (CCD) agent performance, ticket resolution metrics, and customer feedback.

# Project Overview
Built a centralized data warehouse to analyze IT Helpdesk performance for the Infosys Computer Communication Division (CCD). By extracting raw ticketing data from the CA Unicenter (AHD) platform and user feedback forms, this architecture transformed manual tracking into an automated pipeline. The resulting Gold layer fed directly into Power BI dashboards (developed in collaboration with BI management) used for executive reporting, identifying the Top-5 agents monthly, and routing common issues to the IVR system.

# Architecture & Medallion Flow
1.Data Sources: CSV exports from CA Unicenter (Advanced Helpdesk) and automated employee feedback forms.
2.Bronze Layer (Raw): Full-load bulk inserts of unstructured ticketing data. Maintained native formats (e.g., dates as INT).
3.Silver Layer (Cleansed): Data type validation (casting 8-digit INT to DATE), anomaly filtering, primary key verification, and low-cardinality checks (Agent Dept, Ticket Status).
4.Gold Layer (Business): Star schema dimensional modeling (lower_snake naming convention) optimized for Power BI.
