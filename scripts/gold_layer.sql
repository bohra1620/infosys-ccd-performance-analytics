CREATE TABLE gold.dim_agent (
    agent_key INT IDENTITY(1,1) PRIMARY KEY,
    agent_id INT,
    agent_name NVARCHAR(50),
    agent_dept NVARCHAR(50)
);

CREATE TABLE gold.fact_ticket_resolutions (
    fact_key INT IDENTITY(1,1) PRIMARY KEY,
    ticket_number NVARCHAR(50),
    agent_key INT FOREIGN KEY REFERENCES gold.dim_agent(agent_key),
    ticket_create_dt DATE,
    ticket_resolution_dt DATE,
    resolution_time_days AS DATEDIFF(DAY, ticket_create_dt, ticket_resolution_dt), 
    source_name VARCHAR(50)
);
