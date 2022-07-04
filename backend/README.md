# deploy the backend docker image to kubernetes

## understand the backend java application

this app uses remote api to handle data persistence. the backend implements five rest api including: 
* retrieving the current list of todo tasks
* adding a new todo task
* finding a todo task by its id 
* updating an existing todo task
* deleting a todo task

the backend will be running and can be accessed through the link http://localhost:8080/api/task

the backend is implemented using the following java classes (under ./backend/src/...):
* main.java: starts and configure the main entry points 
* taskdto.java: maps a todo task instance to and from the json document 
* taskrepository.java: stores the todo item in a database 
* taskservice.java: implements the service and exposes the rest api

### database

the credentials to access the database for this application are as follows:

- port: **5432**
- username: **taskuser**
- password: **123456**
- database name: **task**

### objectives

* build and depoly the docker image of the application
* deploy the image on the tanzu community edition cluster on azure
* test the backend application

## build and push the docker images to the github container registry 

the container registry is where your docker images are managed

the main.yml file (./.github/workflows/...) allows to build the backend image from the dockerfile (./backend/...) and to push it directly in the github registry
a new image is pushed at each push in the repository thanks to [github actions](https://github.com/features/actions)

<img src=images/ci.png width="" height="100" >

in a couple of minutes, you should have successfully built an pushed the images into the ghc repository! 

<img src=images/package.png width="" height="300" >



## deploy on kubernetes and check the status 

run the `deploy.sh` script
```
cd ~/todo-app/backend
./deploy.sh
```

if everything runs correctly the script will output something like this.

<img src=images/deploy-backend.png width="" height="130" >

the following command returns the kuberntes service of my todo application: 
```
kubectl get services
```
<img src=images/services.png width="" height="100" >

the following command returns all the pods running in the kubernetes cluster:
```
kubectl get pods
```
<img src=images/pods.png width="" height="90" >


you can tail the log of one of the pods by running:
```
kubectl logs -f <pod name>
```
example: `kubectl logs  -f backend-856b78b7fd-9pxck`

<img src=images/logs.png width="" height="260" >

## undeploy 

if we make changes to the image, we need to delete the service and the pods by running undeploy.sh then redo the deployment 

run the `undeploy.sh` script
```
cd ~/todo-app/backend
./undeploy.sh
```
## testing the backend application

to test the backend application locally, we have to forward our backend service to the port 8080 by running: 
```
kubectl port-forward service/backend 8080:8080  
```
the following command should display the todo tasks in the todotask table that was create in the database 
```
curl localhost:8080/api/task
```









