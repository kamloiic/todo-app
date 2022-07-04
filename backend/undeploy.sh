cd ~/todo-app/kubernetes
kubectl delete deployment.apps/backend
kubectl delete service/backend
kubectl delete deployment.apps/postgres
kubectl delete service/postgres
kubectl detele configmap/postgres-configmap
kubectl delete persistentvolumeclaim/postgres-pvc  

