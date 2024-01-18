# Hosting Static Website

## Purpose:
This project intends to deploy and expose an app via AWS EC2 instance. This will allow the app to be accessed from anywhere around the world using the public ip address and hosting port.

## Description:
The frontend/app file will be deployed on the EC2 Instance. Since, EC2 has a public key hence it will provide a secure http connection with a IP address which can be accessd from anywhere in the world.

## Pre-Requisites:
1. AWS EC2 Instance
2. Ubuntu Shell
3. VS Code (for local hosting and UI upgradation)
4. Pre-made project for deployment

## Scripting:
1. We clone the project we want to deploy from GitHub to the local machine
```
git clone https://github.com/SonuDash/MovieLand.git
```
2. Open the VS Code with
```
code .
```
3. declare an invisible .env file in the VSCode termincal with
```
touch .env
```
4. the .env file does the job of declaring environment settings for our project
```
DOMAIN= ""
PORT=
STATIC_DIR="./client"

PUBLISHABLE_KEY=""
SECRET_KEY=""
```
5. Initialize and start the project:
```
npm install
npm run start
```

AND all set the project is up and running!! But in localhost
