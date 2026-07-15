# ITSM Operations Data Warehouse & Analytics
End-to-end Medallion Data Architecture (SQL Server) for IT Service Operations (ITSM), designed to track agent performance, SLA adherence, and customer feedback across multiple platforms.

# Project Overview
Built a centralized data warehouse to analyze IT Helpdesk performance for both internal operations (Infosys CCD) and client operations (HP/UOB). By extracting raw ticketing data and user feedback, this architecture transformed manual tracking into an automated pipeline. The resulting Gold layer fed directly into Power BI dashboards (developed in collaboration with BI management) used for executive reporting and agent performance appraisals.

# Architecture & Medallion Flow
**1.Data Sources:** CSV exports from CA Unicenter (Infosys) and ISM Ticketing Tool (HP/UOB), alongside user feedback forms.
**2.Bronze Layer (Raw):** Full-load bulk inserts of unstructured ticketing data. Maintained native formats (e.g., dates as INT). Added source_name lineage tracking.
**3.Silver Layer (Cleansed):** Data type validation (casting 8-digit INT to DATE), anomaly filtering, primary key verification, low-cardinality checks (Agent Dept, Ticket Status), and timestamping via dwh_creation_date.
**4.Gold Layer (Business):** Star schema dimensional modeling (lower_snake naming convention) optimized for Power BI. Separated agent dimensions, issue categories, and a unified ticket resolution fact table.
