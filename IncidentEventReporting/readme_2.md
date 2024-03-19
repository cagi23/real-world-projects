Objective

This challenge aims to develop a comprehensive solution structure that includes basic CRUD
operations based on the provided High-Level Design (HLD), as well as creating a DB schema
that meets the requirements.

A high-level architecture is given below.



TECHNOLOGY
Frontend:
○ React JS latest stable version
○ Next.js
○ Typescript
○ Material UI library
Backend
○ Python 3
○ Flask
Database
○ Postgresql 16
REQUIREMENTS
● You have to create a comprehensive solution structure for the frontend and backend.
● You have to create a complete DB schema/table to meet the project requirement.
● The solution must be well structured as per standards and should meet the project requirements.
● It should cover the basic functionalities like logging, error handling, etc.
● The basic Save and Retrieve function (end to end) needs to be implemented using the
solution created.


DETAILS:
● In the frontend, you need to create screens for saving and retrieving incidents. Refer to
the image below.
● In the backend, APIs must be implemented to save and retrieve incidents from the
Postgresql database.
● Database - All required tables should be created to meet the complete project
requirements. Table creation is not limited to this basic save and retrieve function alone.


PROJECT REQUIREMENT:
The project requirements with three Personas and their workflows are available in the previous
challenge. Check: Requirement_details


FRONTEND:
● The first screen is the landing page, and after the user clicks the “New Capture” button,
show the screen on the right.
● The second screen shows the textbox to allow the user to input the incident details, and
it should have a “Save” button below the textbox to save the incident to the DB.
● The list on the left of the screens shows the saved incidents.
● The voice input, Guided Recommendations, Conduct Interview, Analyze a Photo,
Summarize the Incident, and Generate Report buttons are not in scope.


Note:

Must use React Functional components and follow React js best practice
Prefer small components and avoid code redundancy.
Browser Support: Latest Chrome, Edge, Firefox, and Safari, and the UI must be responsive, and support the mobile/tablet/desktop modes.
Logging and exception handling should be implemented.


BACKEND:
Two APIs need to be created.
An API is required to save the incident data, which includes the incident title, incident
details, and incident timestamp. For now, the first sentence of the input can be used as
the incident title. This API should be called when the Save button is clicked.
An API is needed to retrieve all incidents in descending timestamp order. This API is
used to populate the incident list.
The incident must be stored in Postgresql db.
Logging and exception handling should be implemented.
Nice to Have:
Calling a Chat GPT 3.5 Turbo LLM API to summarize the incident and generate the
incident title is optional.
Asset:

Design: https://www.figma.com/file/U0V1klCBGIuW7zeqCKNUWd/CRCboost-Final-Project-(DS)?type=design&amp;node-id=01&amp;mode=design&amp;t=Vqmx9C3otD0UapMx-0
Deliverables:

Frontend solution(Source code)
Backend solution(Source code)
Postgres db schema/tables
Clear readme file on
Installation Instructions: Clearly outline the steps required to install and set up the
solution. Include any dependencies or prerequisites that need to be installed.
Usage Guide: Explain how to use the solution, including any command-line
instructions, configuration settings, or user interfaces. Provide examples and
screenshots if necessary
DB schema details
Scorecard

Frontend solution(Source code) - 30%
Backend solution(Source code) - 30%
Postgres db schema - 20%
Readme file - 20%
