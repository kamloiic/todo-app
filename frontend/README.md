# Deploy the frontend React JS Application 

## The ReactJS application

### Objectives 

* Clone the git repository on the laptop 
* Run the ReactJS frontend code in Dev Mode then build for Production 
* Host the production build on Kubernetes

### Prerequisities

- Requires the **Backend Java**

- Node installed, my version:

$ node --version
v17.8.0

- Yarn installed, my version:

$ yarn --version
1.22.18

- create-react-app installed, my version:

$ create-react-app --version
5.0.1

- Make sure **git** is intalled, my version:
$ git --version
git version 2.32.0 (Apple Git-132)

## Run in Dev Mode 

This project was bootstrapped with Create React App.

1. CLone the git repository to a directory on the laptop 
  ```
  <copy>
  mkdir todo-app
  cd todo-app
  git clone https://github.com/kamloiic/todo-app.git
  </copy>
  ```

2. Navigate to frontend 
  ```
  <copy>
  cd todo-app/frontend
  </copy>
  ```

3. Run the following yarn commands to install the required packages 
  ```
  <copy>
  yarn install
  </copy>
  ```

4. In the project directory, run the app in development mode
  ```
  <copy>
  yarn start
  </copy>
  ```

5. Open [http://localhost:3000](http://localhost:3000) to view it in the browser.
