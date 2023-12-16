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

   b. Type the name of a movie in the search bar, and the system will provide movie recommendations.

   Note: The system database contains only the top 2.5K movies based on IMDb.

