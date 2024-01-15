# GitHub users tracker
## Purpose:
This project will automate the painstalking and repeatitve task of checking the members of a particular repo of an organisation using simple shell scripting and Git API.

## Description:
This version 1 of this project will help us see the non admin contributors/members of the organisation's repo.

## Pre-Requisites:
- bash
- Ubuntu based EC2 instance connection
- Command window for shell scripting
- Need to be admin of a GitHub Organisation

## Commands in shell:
#### Initialisation:
```
bash
vim list_users.sh
```
**Note: the file list_users.sh is available in the following link: _[]_**
#### Compilation:
```
chmod 777 list_users.sh
./list_users.sh <organisation-name> <repo-name>
```
#### Output:
```
Listing users with read access to Team-Enthalpy-VITCC/Propulsion...
Users with read access to Team-Enthalpy-VITCC/Propulsion:
Suman-01
```

