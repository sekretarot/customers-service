# README

### How to run in development

To make inter-container communication work uncomment the line corresponding to your OS in `config/settings.yml`.
This will enable the service to access any other docker containers running locally on the specified ports.

Then, from the repository folder run: 

`docker-compose up --build`

This starts your Rails server listening at port 3000 in a Docker container. 

### Example usage
####Web admin interface

`/admin/customers/3`

Please note that the provided functionality here might be degraded depending on the availability of other services.

#### Api endpoints 

Customer Info:

GET `/api/v1/customers/3`

Create new customer account

POST `/api/v1/customers/3/accounts?initial_credit=10`
