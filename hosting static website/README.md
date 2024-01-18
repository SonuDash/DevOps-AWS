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

### Deployment in Ubuntu EC2 instance:
1. We need to make an Ubuntu based EC2 instance in the AWS (best to make it as an IAM user)
2. We need to use a 3rd party X-server providing application (I use MobaXterm)
3. We initialize git with:
```
git init
```
4. To keep our Ubunut _healthy and up to date_ we use:
```
sudo apt install
```
5. then we install NodeJS
```
sudo apt install nodejs
```
6. then we install npm
```
sudo apt install npm
```
7. then we obviously set up the environment option with .env file
```
vim .env
```
```
DOMAIN= ""
PORT=
STATIC_DIR="./client"

PUBLISHABLE_KEY=""
SECRET_KEY=""
```
8. then we initiallize and start the project
```
npm install
npm run start
```
## Deployment (Final Stage (I Promise You))
We will observe that even if after so many steps, if we take the public ipv4 address of our EC2 instance and add the port value to it the application wont run .
Hence, we need to go to do the following:

AWS EC2 -> Instances -> running instance -> Security -> Security groups -> Edit Inbound rules -> set port: port num; set source 0.0.0.0/0

And reload to see the **magic**.

PS- Thank you Rachel Gupta for the frontend project.
