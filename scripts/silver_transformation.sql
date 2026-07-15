CREATE TABLE silver.ca_agent_info (
    agent_id INT NOT NULL,
    agent_name NVARCHAR(50) NOT NULL,
    agent_dept NVARCHAR(50),
    ticket_number NVARCHAR(50) PRIMARY KEY,
    ticket_description NVARCHAR(150),
    ticket_status NVARCHAR(50),
    ticket_source NVARCHAR(50),
    issue_category NVARCHAR(50),
    ticket_create_dt DATE,
    ticket_resolution_dt DATE,
    source_name VARCHAR(50),
    dwh_creation_date DATETIME DEFAULT GETDATE()
);
