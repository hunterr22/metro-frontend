# Metropolitan Convention Center Event Registration App

This application will provide a simple interface for customers to look up events they are interested in, 
and register to the event so that they may attend in the future.

There will be multiple repositories separated by microservices, 
showing iterations as we build and add new features to produce a fully fledged event registration application.
For example, the first repository, `metro-data` holds the source code necessary to produce a simple RESTful API with basic CRUD functionality.
`metro-frontend` holds the source code for the frontend User Interface; `metro-auth` for the source code holding security authentication services.

Some examples of feature functionalities we would like to add include: 
- integrated `hsql` database to hold persistent state
- React.js frontend client
- containerized application using Docker
- Authentication via JWTs with appropriate filters on HTTP requests
- cluster management and load balancing with Kubernetes
- CI/CD management

## Component List:
### Frontend client:
  - React App
