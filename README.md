# Webhook Project with Sinatra and Docker

This project demonstrates a lightweight webhook server implemented using Sinatra, a minimal Ruby framework, and containerized with Docker for ease of deployment. The server listens for POST requests at a specified endpoint and returns a JSON-formatted response.

## Technologies
- **Ruby**: 3.2.6  
- **Sinatra**: 4.1.1  
- **Puma**: 6.5.0  
- **Docker**

## Requirements
- **Git**: For cloning the project repository.  
- **Docker**: To run the application in a container.  
- **Ruby**: Optional, if running the application locally instead of using Docker.

## Installation and Execution
1. Clone the repository and navigate to the project directory:
   ```bash
   git clone https://github.com/username/webhook-sinatra.git
   cd webhook-sinatra
2.  run locally, install the required dependencies:

 ```bash
bundle install
 ```
3.- Then start the server:

 ```bash
ruby app.rb
 ```
4.- Access the application in your browser or API client at http://127.0.0.1:4567.

To run the project in a Docker container, build the Docker image:

 ```bash
docker build -t webhook-sinatra .
 ```
#Then start the container:

 ```bash
docker run -p 4567:4567 webhook-sinatra
 ```
Access the application at http://127.0.0.1:4567.

#Docker Hub Link
You can pull a pre-built image of this project from Docker Hub using the link:
Docker Hub Repository Link
