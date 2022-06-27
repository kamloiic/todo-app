cd ~/todo-app-2/kubernetes
echo "creating postgres deployment and service"
kubectl apply -f backend.yml 
echo "creating postgres deplooyment, service, pvc and config map"
kubectl apply -f postgres.yml 
