CREATE TABLE bronze.ca_agent_info (
    agent_id INT,
    agent_name NVARCHAR(50),
    agent_dept NVARCHAR(50),
    ticket_number NVARCHAR(50),
    ticket_description NVARCHAR(150),
    ticket_status NVARCHAR(50),
    ticket_source NVARCHAR(50),
    issue_category NVARCHAR(50),
    ticket_create_dt INT,       
    ticket_last_update_dt INT,
    ticket_due_dt INT,
    ticket_resolution_dt INT,
    employee_id INT,
    employee_name NVARCHAR(50),
    source_name VARCHAR(50) DEFAULT 'ca_unicenter'
);

CREATE TABLE bronze.fd_feedback (
    ticket_number NVARCHAR(50),
    ticket_date INT,
    feedback_rating NVARCHAR(50),
    feedback_description NVARCHAR(200),
    source_name VARCHAR(50) DEFAULT 'infosys_feedback'
);
