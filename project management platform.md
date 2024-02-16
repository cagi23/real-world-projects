"Develop a comprehensive project management platform that enables users to plan, track, and manage projects collaboratively. The platform should include features such as task assignment, milestone tracking, file sharing, real-time chat, and customizable project templates. Utilize a microservices architecture, with separate services for authentication, project management, file storage, and communication. Implement a responsive and intuitive front-end interface using a modern JavaScript framework of your choice, ensuring cross-browser compatibility and accessibility standards. For the back-end, leverage cloud-native technologies for scalability and reliability, and implement RESTful APIs for communication between front-end and back-end services. Incorporate robust security measures, including encryption for sensitive data, role-based access control, and secure authentication mechanisms. Additionally, ensure the platform supports integration with third-party tools and services through APIs. Your solution should prioritize performance, scalability, and maintainability, demonstrating proficiency in both front-end and back-end development paradigms."

Entities:

User: Represents a user of the platform. Each user has a unique user_id, username, email, and password. Additional attributes include first name, last name, and role (admin, manager, or member).

Project: Represents a project within the platform. Each project has a unique project_id, a name, description, start date, and end date. It also has a foreign key reference to the user_id of the project manager who oversees the project.

Task: Represents a task within a project. Each task has a unique task_id, a name, description, start date, end date, priority level, and status. It also has foreign key references to the project_id it belongs to and the user_id of the assigned user responsible for completing the task.

Comment: Represents a comment made by a user on a task within a project. Each comment has a unique comment_id, the actual comment text, and a timestamp indicating when the comment was posted. It also has foreign key references to the task_id it relates to and the user_id of the user who posted the comment.

Attachment: Represents a file attachment associated with a task within a project. Each attachment has a unique attachment_id, a filename, file size, and file type. It also has a foreign key reference to the task_id it is attached to.

User_Project: Represents the relationship between users and projects. It is a many-to-many relationship table that associates users with the projects they are involved in. It includes foreign key references to both user_id and project_id.

Relationships:

User_Project establishes the many-to-many relationship between users and projects, allowing multiple users to be associated with multiple projects, and vice versa.
Project and Task have a one-to-many relationship, as a project can have multiple tasks associated with it, but each task belongs to only one project.
Task and Comment have a one-to-many relationship, as a task can have multiple comments associated with it, but each comment relates to only one task.
Task and Attachment have a one-to-many relationship, as a task can have multiple attachments associated with it, but each attachment belongs to only one task.


-- Create User table
CREATE TABLE User (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role ENUM('admin', 'manager', 'member') NOT NULL
);

-- Create Project table
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    project_manager_id INT,
    FOREIGN KEY (project_manager_id) REFERENCES User(user_id)
);

-- Create Task table
CREATE TABLE Task (
    task_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    priority ENUM('low', 'medium', 'high') NOT NULL,
    status ENUM('todo', 'in_progress', 'completed') NOT NULL,
    project_id INT,
    assigned_user_id INT,
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    FOREIGN KEY (assigned_user_id) REFERENCES User(user_id)
);

-- Create Comment table
CREATE TABLE Comment (
    comment_id INT PRIMARY KEY,
    comment_text TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    task_id INT,
    user_id INT,
    FOREIGN KEY (task_id) REFERENCES Task(task_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Create Attachment table
CREATE TABLE Attachment (
    attachment_id INT PRIMARY KEY,
    filename VARCHAR(255) NOT NULL,
    file_size INT NOT NULL,
    file_type VARCHAR(50) NOT NULL,
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES Task(task_id)
);

-- Create User_Project table (for many-to-many relationship)
CREATE TABLE User_Project (
    user_id INT,
    project_id INT,
    PRIMARY KEY (user_id, project_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);
