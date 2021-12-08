# tree

# Assumptions
minikube is installed
Local DNS entry is made for local.ecosia.org and it points to the minikube ip

# Commands to run
# Start minikube
minikube start --kubernetes-version=v1.22.2 --cpus 2 --memory 8196

# Run Unit tests
python3 -m unittest

# Run the Server
python3 runserver.py

# Building the Docker Image
sudo docker build -t hellodk/app:v1 .

# Pushing the Docker Image to a public repository
docker push hellodk/app:v1

# Running this app via docker on any server
docker run --rm -d -p 5000:5000 --name ecosia hellodk/app:v1

# Deploying it on minikube
All the deployment and ingress files are under deployments folder.
git clone https://github.com/hellodk/tree.git
cd tree
kubectl apply -f deployments/kubernetes

# Get the ingress NodePort
kubectl get svc -n ingress-ninx

# Now go to the broser and enter the URL local.ecosia.org:XXXXX/tree
where XXXXX is the 5 digit node port we get from the above command