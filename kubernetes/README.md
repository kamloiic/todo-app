# deploy our todo application on kubernetes

## create a kubernetes cluster 

my kubernetes cluster is a [tanzu communnity edition](https://tanzucommunityedition.io) cluster deploy on azure

## create management cluster 

<img src=images/management.png>

## create workload cluster

<img src=images/workload.png>




## create and deploy the nginx ingress

ingress rules are the rules that ingress controller follows to diistribute the load
nginx ingress controller uses load balancer type services actually as entrypoint to the cluster

<img src=images/nginx.png width="" height="300" >

install the ingress controller

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.2.1/deploy/static/provider/cloud/deploy.yaml
```

if everything runs correctly the script will output something like this.

<img src=images/deploy.png>

save the external-ip of the ingress controller

deploy the ingress 

```
cd ~/todo-app/kubernetes
kubectl apply -f ingress.yml
```

the following command returns the kuberntes service of my todo application: 
```
kubectl get ingress
```
<img src=images/ingress.png width="" height="60" >

## test the ingress

type the external ip that we saved earlier in a browser and you will see the todo application


## troubleshooting

instance blocking on terminating mode: 

kubectl patch ... -n default -p ‘{“metadata”:{“finalizers”:[]}}’ --type=merge
