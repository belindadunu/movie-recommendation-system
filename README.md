## CineSuggest
# Non-Technical Documentation

## 1. Introduction
Welcome to the Movie Recommendation System! This documentation provides a user-friendly guide to understand and use the system.

## 2. Requirements
To build and run the Movie Recommendation System without any issues, ensure the following requirements are met:
- Create a virtual environment using Python (version 3.8 or higher, tested on 3.9.16).
- Install dependencies listed in the requirements text file from the repository.

## 3. Infrastructure Deployment with Terraform and EKS
The Movie Recommendation System utilizes Terraform to create the necessary infrastructure on Amazon Elastic Kubernetes Service (EKS). Follow these steps to deploy the infrastructure:

   a. Clone the repository to your local machine.
   
   b. Navigate to the `terraform` directory within the repository.
   
   c. Run the Terraform commands to initialize and apply the infrastructure:
      ```bash
      terraform init
      terraform apply
      ```

   d. Confirm the changes when prompted.

   e. Terraform will provision the required resources, including the EKS cluster.

## 4. Continuous Integration and Deployment (CI/CD) with Jenkins
Jenkins is used as the CI/CD pipeline tool to automate the deployment process of the Movie Recommendation System onto the EKS cluster. Follow these steps:

   a. Install and configure Jenkins on your server.

   b. Create a new Jenkins pipeline job for the Movie Recommendation System.

   c. Configure the pipeline to fetch the source code from your repository.

   d. Add build steps to build the Docker image and push it to a container registry.

   e. Configure deployment steps to deploy the Docker image onto the EKS cluster.

   f. Trigger the Jenkins pipeline manually or set up webhooks for automatic triggers on code changes.

## 5. Deploy through Jenkins
To deploy the Movie Recommendation System using Jenkins:

   a. Open your Jenkins dashboard.

   b. Navigate to the Movie Recommendation System pipeline job.

   c. Trigger the pipeline manually or wait for the automatic trigger.

   d. Jenkins will fetch the latest source code, build the Docker image, and deploy it onto the EKS cluster.

   e. Once the deployment is successful, access the system by opening your browser and navigating to http://localhost:8000.

   Note: The actual URL may vary based on your deployment environment.

## 6. Usage
The Movie Recommendation System is a user-friendly movie recommendation application based on user input. Here's how to use it:

   a. Open the HTML file in a web browser.


# Technical 

## Tech Stack:
This application is built on a Django python framework, the application also utilizes a dbsqlite database to store any movies and searches by the user. Both the Django framework and dbsqlite database are in the backend of the application. We are also incorporating nginx as a reverse proxy in the frontend of the application. Nginx will redirect traffic to the backend of our servers and provide more security incase of any breaches.

## Docker:
Docker is used to containerize the application. The `Dockerfile` in each app’s directory specifies the environment and dependencies. The frontend dockerfile contains the image for our nginx reverse proxy, it creates the nginx image and exposes port 80 to access to the frontend of our application. The backend dockerfile contains the configuration of our backend dependencies. It includes the python image, and exposes port 8000 for our application be accessed from. These images were created and tested by running the `docker build` and `docker run` commands. Once these images were tested and created successfully they were uploaded to dockerhub for easier access.

## Terraform:
Terraform files were configured to create the cloud infrastructure that our application was going to be built on. To start off we also configured terraform files to create AWS user accounts for every team member in the group, we configured it with the right permissions and roles. Following that we created terraform files to create specific instances for docker, Jenkins and terraform. Once those were created, we configured one last terraform file which included our cloud infrastructure for our application.

## Jenkins Pipeline:
Jenkins was the automation tool that we used for this application. For our Jenkins pipeline we created two jenkinsfile to run. Our Jenkins pipeline was created with two agent nodes, the first Jenkins agent `JenkinsfileS1` was instructed to initialize our terraform environment, followed by plan and lastly we applied our configurations from our terraform files. Our second Jenkinsfile was instructed to build the docker images, once the docker images were built, we gave it access to dockerhub credentials and allowed it to push to dockerhub.


   b. Type the name of a movie in the search bar, and the system will provide movie recommendations.

   Note: The system database contains only the top 2.5K movies based on IMDb.

