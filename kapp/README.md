# kapp 

kapp is a tool for deploying resources on kubernetes

it provides an easier way to deploy and view all resources created together 

it is able to wait for resources to be created, updated, or deleted, and provides a live status on the progress of the actions

too install kapp:
```
brew tap vmware-tanzu/carvel
brew install kapp
```

the following command creates our deployments and services: 
```
cd ~/todo-app
kapp deploy -a todo-app -f kubernetes
```
if everything runs correctly, it will output something like this 

<img src=images/kapp.png width="" height="250" >

the following command shows what we have running with kapp: 
```
kapp list -A
```
if everything runs correctly, it will output something like this 

<img src=images/list.png width="" height="170" >

i added a protocol to our frontend service, let's see what we have now

the following command shows the changes 
```
cd ~/todo-app
kapp deploy -a todo-app -f kubernetes -c
```
if everything runs correctly, it will output something like this 

<img src=images/changes.png width="" height="170" >

the following command deletes the application 
```
kapp delete --app=todo-app
```