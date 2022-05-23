# ToDo-App version 1.0.

This project shows how to run a todo application on Docker and on Kubernetes, using a Spring boot backend and a Rect.js frontend.


![](./images/ui.png )


Here is an architecture of this todo application 


![](./images/architecture.png )


# Deploy the backend Docker Image to Kubernetes

## Java backend application 

This application uses APIs to handle data persistence. The backend implements five REST APIs including: 
* Retrieving the current list of todo tasks
* Adding a new todo task
* Finding a todo task by its ID
* Updating an existing todo task
* Deleting a todo task

### Objectives 

* Build and deploy the Docker image of the application 
* Deploy the image on Kubernetes 
* Test the backend application 

### Prerequistes

This application requires: 

* Java 11
* Spring boot 2.6
* MySQL 5.7
* A Rest Client (ex: Postman) installed (to test the APIs)

# Deploy the frontend React JS Application 

## The ReactJS application

### Objectives 

* Clone the git repository on the laptop 
* Run the ReactJS frontend code in Dev Mode then build for Production 
* Host the production build on Kubernetes

### Prerequisities

- Requires the **Backend Java**

- Node installed, my version: 17.8.0
```
node --version
```

- Yarn installed, my version: 1.22.18

```
yarn --version
```

- create-react-app installed, my version: 5.0.1
```
create-react-app --version
```

- Make sure **git** is intalled, my version: 2.32.0 
```
git --version
```

## Run in Dev Mode 

This project was bootstrapped with Create React App.

1. CLone the git repository to a directory on the laptop 
  ```
  mkdir todo-app
  cd todo-app
  git clone https://github.com/kamloiic/todo-app.git
  ```

2. Navigate to frontend 
  ```
  cd todo-app/frontend
  ```

3. Run the following yarn commands to install the required packages 
  ```
  yarn install
  ```

4. In the project directory, run the app in development mode
  ```
  yarn start
  ```

5. Open [http://localhost:3000](http://localhost:3000) to view it in the browser.











