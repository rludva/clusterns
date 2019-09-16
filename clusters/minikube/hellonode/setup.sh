# More informations: https://fedoramagazine.org/minikube-kubernetes/

# Set the context for Minikube..
kubectl config use-context minikube

# Use the Minikube Docker daemon..
eval $(minikube docker-env)

# Build your Docker image with the Minikube Docker daemon..
docker build -t hello-node:v1 .

# Create Minikube deployment..
kubectl run hello-node --image=hello-node:v1 --port=8080

# Get deployments..
kubectl get deployments

# View config
kubectl config view -o yaml > config.yaml

# Create service..
kubectl expose deployment hello-node --type=LoadBalancer

# See your application..
minikube service hello-node
