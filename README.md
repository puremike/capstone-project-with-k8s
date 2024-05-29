# Basic Front-End Application Using Docker and Kubernetes

## Here are some steps followed to create my basic front-end web application for my company landing page using docker and k8s:

1. I created a new project directory containing my index.html and styles.css files.

2. I initialized a new git repo in the project directory, add new files and committed them, and further push them to my github repo

3. I followed the steps to dockerize my application with docker:

   a. I created a dockerfile; utilized nginx as my base image, copied my working directory, and copy my index.html and index.css files in the dockerfile

   Here is the dockerfile:

   #Use the official NGINX image from the Docker Hub
   FROM nginx:latest

   #Set the working directory in the container
   WORKDIR /usr/share/nginx/html/

   #Copy the HTML and CSS files to the appropriate directory in the container
   COPY index.html /usr/share/nginx/html/index.html
   COPY styles.css /usr/share/nginx/html/styles.css

   #Expose port 80
   EXPOSE 80

   b. I built an image using the docker file:
   docker build -t dockerfile .

   c. I pushed the image to my dockerhub:
   docker login
   docker push username/docker:latest

4. I set up a KIND (Kubernetes IN Docker) to deploy kubernetes:

   a. I already have docker and kubectl installed
   b. I installed KIND

   c. I created a kind cluser :
   kind create cluster

   d. I created an nginx-deployment.yaml and nginx-service.yaml (ClusterIP) file to deploying my server

   e. I applied my deployments:
   kubectl apply -f my-nginx/nginx-deployment.yaml
   kubectl apply -f my-nginx/nginx-service.yaml

   f. I verified my deployments using:
   kubectl get deployments
   kubectl get services
   kubectl get pods

5. I accessed the Application using minikube:
   minikube service nginx-service --url
