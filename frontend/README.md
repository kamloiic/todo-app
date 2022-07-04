# deploy the frontend react js application 

## understand the react js application 

the application is simple; it uses functional components with state hooks for managing states
there is a main part called "app"

### objectives 

* build and deploy the docker image of the application
* deploy the image on the tanzu community edition cluster on azure
* test the frontend application
  

### prerequisities 

this part requires the backend (java) and yarn command to be installed 
```
yarn --version
```
if [yarn](https://yarnpkg.com) is not installed, install it 

[**git**](https://bit.ly/3DXyjiL) also need to be installed

## configure the reactjs frontend 

this project waas bootstrapped with [create react app](https://github.com/facebook/create-react-app)

navigate the frontend 
```
cd todo-app/frontend
```
the following command install the required packages 
```
yarn install 
```

run the app in development mode in the project directory 
```
yarn start 
```
open http://localhost:3000 to view it on the browser 

## build and push the docker image on the github container registry 

same as the backend, the frontend image will be pushed into the github registry by using the workflows we created before 

<img src=images/package.png width="" height="300">

## deploy on kubernetes and check the status

run the `deploy.sh` script
```
cd ~/todo-app/frontend
./deploy.sh
```

if everything runs correctly, the script will output something like this 

<img src=images/deploy.png width="" height="80" >

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

<img src=images/logs.png width="" height="140" >

## undeploy (optionnal)

if we make changes to the image, we need to delete the service and the pods by running undeploy.sh then redo the deployment 

run the `undeploy.sh` script
```
cd ~/todo-app/frontend
./undeploy.sh
```
## testing the backend application

to test the backend application locally, we have to forward our backend service to the port 8080 by running: 
```
kubectl port-forward service/frontend 3000:3000  
```
the following command should display the todo tasks in the todotask table that was create in the database 
```
curl localhost:3000
```


