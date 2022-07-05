# get started with kpack 

kpack is a k-native platform which provides builds of oci images aas a aplatform implementation of buildpacks

install kpack 
```
kubectl apply -f https://github.com/pivotal/kpack/releases/download/v0.6.0/release-0.6.0.yaml
```
the following command returns the kpack ressources that was deployed: 
```
kubectl get all -n kpack
```
if everything runs correctly, it will output something like this 

<img src=images/all.png width="" height="160" >

set up github container registry (ghcr.io) secret 
```
kubectl create secret gh-registry registry-credentials-github \
    --username= \
    --password= \
    --server=ghcr.io \
    --namespace default
```

deploy all kpack's ressources 
```
cd ~/todo-app
kubectl apply -f kpack 
```
the following command returns the images present on the cluster  
```
kubectl get images -A
```
if everything runs correctly, it will output something like this 

<img src=images/images.png width="" height="40" >

we also use `stern` to tail the logs during the builds
to instal stern 
```
brew install stern 
```
to see the logs during the builds 
```
stern <app-name>
```




