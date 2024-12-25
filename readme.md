# Project Setup Instructions

This guide explains how to set up and run the Pirates project, which includes a backend service and a frontend application.

## Prerequisites

Before starting, ensure the following are installed on your machine:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- Bash shell (Linux, macOS, or Windows with WSL)

## Project Structure

- **PiratesBackend/**: Contains the backend code and `docker-compose.yml` file for setting up backend services.
- **piratesfront/**: Contains the frontend code and Dockerfile for building and running the Angular application.
- **run.sh**: A shell script to build and start the backend and frontend applications.

## Steps to Run the Project

### 1. Clone the Repository

Clone the project repository to your local machine:
```bash
git clone <repository-url>
cd <repository-folder>
```

### 2. Make the Shell Script Executable

Ensure the `run.sh` script has executable permissions:
```bash
chmod +x run.sh
```

### 3. Run the Shell Script

Execute the `run.sh` script to build and start the backend and frontend containers:
```bash
./run.sh
```

### 4. Access the Application

- **Backend**: Open `http://localhost:8080` in your browser or API testing tool.
- **Frontend**: Open `http://localhost` in your browser.

### 5. Verify Running Containers

To check if the containers are running, execute:
```bash
docker ps
```

## Notes

- Ensure that ports `8080` (backend) and `80` (frontend) are not occupied by other services.
- If you encounter issues, check the logs:
  - Backend: `docker-compose logs` (in the `PiratesBackend` directory)
  - Frontend: `docker logs pirates-frontend-container`
- To stop the containers, run:
  ```bash
  docker-compose down   # Stop backend services
  docker stop pirates-frontend-container && docker rm pirates-frontend-container
  ```

## Additional Information

For troubleshooting, consult the Docker [documentation](https://docs.docker.com/).
