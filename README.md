# tree

# Assumptions


# Commands to run
python3 -m unittest
python3 runserver.py

# Building the Docker Image
sudo docker build -t hellodk/app:v1 .

# Pushing the Docker Image to a public repository
docker push hellodk/app:v1

# Running this app via docker on any server
docker run --rm -d -p 5000:5000 --name ecosia hellodk/app:v1

# Deploying it on minikube
All the deployment and ingress files are under deployments folder.