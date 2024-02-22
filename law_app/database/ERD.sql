-- Table for Lawyers
CREATE TABLE Lawyers (
    lawyer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    -- Add more fields as needed
);

-- Table for Clients
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    -- Add more fields as needed
);

-- Table for Cases
CREATE TABLE Cases (
    case_id INT PRIMARY KEY,
    case_name VARCHAR(100),
    lawyer_id INT,
    client_id INT,
    FOREIGN KEY (lawyer_id) REFERENCES Lawyers(lawyer_id),
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
    -- Add more fields as needed
);

-- Table for Documents
CREATE TABLE Documents (
    document_id INT PRIMARY KEY,
    case_id INT,
    document_name VARCHAR(100),
    document_content TEXT,
    FOREIGN KEY (case_id) REFERENCES Cases(case_id)
    -- Add more fields as needed
);

-- Table for Tasks
CREATE TABLE Tasks (
    task_id INT PRIMARY KEY,
    case_id INT,
    task_description TEXT,
    due_date DATE,
    FOREIGN KEY (case_id) REFERENCES Cases(case_id)
    -- Add more fields as needed
);

-- Table for Calendar Events
CREATE TABLE CalendarEvents (
    event_id INT PRIMARY KEY,
    lawyer_id INT,
    event_name VARCHAR(100),
    event_date DATE,
    FOREIGN KEY (lawyer_id) REFERENCES Lawyers(lawyer_id)
    -- Add more fields as needed
);

-- Table for Legal Research Resources
CREATE TABLE LegalResearchResources (
    resource_id INT PRIMARY KEY,
    resource_name VARCHAR(100),
    -- Add more fields as needed
);

-- Junction Table for Many-to-Many Relationship between LegalResearchResources and Cases
CREATE TABLE CaseLegalResearchResources (
    case_id INT,
    resource_id INT,
    PRIMARY KEY (case_id, resource_id),
    FOREIGN KEY (case_id) REFERENCES Cases(case_id),
    FOREIGN KEY (resource_id) REFERENCES LegalResearchResources(resource_id)
);

-- Table for Messages
CREATE TABLE Messages (
    message_id INT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    case_id INT,
    message_content TEXT,
    send_date TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES Lawyers(lawyer_id),
    FOREIGN KEY (receiver_id) REFERENCES Clients(client_id),
    FOREIGN KEY (case_id) REFERENCES Cases(case_id)
    -- Add more fields as needed
);

-- Table for Files
CREATE TABLE Files (
    file_id INT PRIMARY KEY,
    case_id INT,
    file_name VARCHAR(100),
    file_content BLOB, -- Assuming binary data for file content
    FOREIGN KEY (case_id) REFERENCES Cases(case_id)
    -- Add more fields as needed
);
