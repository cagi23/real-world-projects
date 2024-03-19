Objective
The objective of this challenge is to design a simple, scalable, secure, and cost-efficient architecture for a responsive AI-powered web application. The application should support web, mobile, and tablet platforms, with a focus on enhancing public safety through advanced incident and event reporting capabilities. The challenge encourages innovation in selecting technology stacks that optimize user experience, performance, and cost-effectiveness while maintaining robust data privacy and security standards.

Scope
Participants are tasked with proposing an architecture that seamlessly integrates responsive web frontend, backend, database, and AI services. The proposed architecture should support essential functionalities such as user management, incident reporting,  AI-driven - text, image and audio summarization, and data visualization, with an emphasis on best-fit solutions.

Project Details:
The functionality of a web application can be defined using the three personas who will use this application namely - Admin, Supervisor/Lead, and Officer.

-          Admin will create the users to the system and assign roles.

-          Officers will create the incident details and report to their Leads on daily basis.

-          Lead will check all the ticket details created and generate the report.


Below is the workflow and functionality of each persona below.

1.      Admin User:

1.      Create new user – Get all the user details and set roles

2.      Ability to view and edit user details.

3.      Ability to enable or disable users

4.      Main component: SMTP



Workflow:





2. Lead Persona

1.      The manager will review all incidents reported by all reporting officers on a particular day.

2.      Ability to analyze reported incidents by officer level or by date

3.      Ability to generate reports and download in PDF format or send via email.

4.      Main components: PDF, SMTP

Workflow:







3.      Officer Persona

o   Create a incidents on the system using one or a combination of the three methods listed below.

§  Text (free form)

§  Images

§  Audio (conversation recording)

o   AI model used to summarize the input (text, image or audio) provided by the user and provide a detailed report as output (text)

o   Ability to review all incidents reported on a particular day and send them to Lead.

o   Main component : AI model to support text/image/audio summarisation

Workflow:





Architecture Components
1.      Frontend Architecture:

o    Propose a technology stack for developing an intuitive and responsive user interface. Considerations should include ease of use, accessibility, and cross-platform compatibility.

o    Design interfaces for various user interactions like report submissions, dashboard navigation, and viewing AI-generated summaries.

2.      Backend Architecture:

o    Suggest a backend framework or technology stack that ensures scalability, security, and efficient data handling. The choice should support seamless integration with the chosen frontend technologies, database and AI services.

o    Outline a strategy for API development, data management, and user authentication, emphasizing modular and maintainable design principles.

3.      AI Model Integration:

o    Recommend AI models that provide text, image, and audio summarization capabilities. Justifications should consider accuracy, performance, cost and maintenance and ease of integration.

o    Address how AI model will adhere to data privacy requirements, suggesting possible adoption of privacy-preserving techniques or frameworks.

o    Refer Sample AI based incident summarisation

4.      Data Privacy and Security:

o    Develop a comprehensive strategy for protecting data privacy and security across all application layers. Include considerations for encryption, data anonymization, and regulatory compliance.

o    Propose mechanisms for ongoing security assessments, privacy audits, and adherence to best practices and standards.

5.      Deployment and Cost Optimization:

o    Present a deployment strategy that leverages cloud computing, containerization, or other scalable technologies, focusing on reliability and cost-efficiency.

o    Discuss the anticipated cost implications of the chosen technologies and how the architecture promotes cost optimization without compromising quality or performance.

Deliverables
·         Architecture Proposal: A detailed architectural blueprint, including diagrams and rationale explaining the choice of technologies and how they contribute to the application's goals regarding functionality, user experience.

·         PoC code: The simple PoC that code will illustrate an end-to-end flow where the application take any one, text or image or audio, as input from the user interface, processes these inputs through an AI summarization model, stores the results in a database, and finally displays the summarized content back on the user interface.

·         Data Security and Privacy Plan: An in-depth plan detailing data protection measures, compliance strategies, and ethical considerations.

·         Cost Analysis: An overview of cost considerations associated with the proposed architecture, highlighting any efficiencies or savings achieved through innovative choices.

·         Components: Break down the project requirements into a series of smaller, more manageable challenges that can be run on the Topcoder platform. The AI integration plan should detail how text, image, and audio summarization will be implemented and used in the application

Score card:

·         Architecture Proposal. – 40%

·         PoC code – 20%

·         Data Security and Privacy Plan – 10%

·         Cost Analysis – 10%

·         Components – 20%

**Passing score for this challenge will be 60%.

Instructions:

The participants should consider the following while designing the architecture:

·         The application should be responsive and should provide a seamless user experience across different devices.

·         The architecture should be scalable and should be able to handle increasing amounts of data and users.

·         The architecture should ensure the secure handling and storage of user data.

·         The AI model integration should be done in a way that the application can leverage the summarization features effectively.

·         The architecture must ensure that the overall cost, including development, integration, deployment and maintenance of the AI ​​model is very minimal and cost-effective.

Evaluation Criteria
·         Technology Stack: Technology selection and architectural design, demonstrating understanding and foresight.

·         Cost-Effectiveness: Efficiency in achieving cost savings while delivering a robust and feature-rich application.

·         Scalability and Flexibility: The architecture's capacity to evolve and handle increased workloads or functionalities.

·         Compliance and Security: Effectiveness in implementing stringent security measures and complying with data privacy standards.

·         Feasibility: Practicality and realism of the proposed architecture, considering current technology trends and industry standards.
