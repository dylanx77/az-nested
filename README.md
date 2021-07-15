# Azure Landing Zone Templates

This repository contains ARM templates that will be used to build out the ACP4Gov Azure Environment. 
The intent of these templates is to recreate what has been deployed in the DEV environment. This will allow replication of the environment for fully managed 
customers to be complete in an efficient, repeatable manner. Additionally, these artifacts will enable deployment of satellite Azure environments that will 
be managed by ACP4Gov.

## Table of Contents
* [General Info](#general-information)
* [Artifacts](#artifacts)
* [Setup](#setup)
* [Usage](#usage)
* [Project Status](#project-status)

## General Information
- Once this repository is fully populated, ARM templates will be attached to Azure Blueprints for deployment purposes. Blueprints will be deployed via Github Runners and Actions.
- Templates are currently built so they can be deployed via Github once attached to a blueprint. That said, templates can also be deployed via ARM CLI or Powershell for testing purposes. 
- Further information about how to use these templates for testing purposes can be found via reviewing the Readme page for individual subscription directories.

## Artifacts
There are 6 directories under the "landing-zone" directory that correspond to individual subscriptions that make up individual subscriptions that exist within this architecture.
Review each subscription directory for deployment information related to resources in a particular subscription.
- Network
- Common
- Identity
- Devops
- Security
- Management

## Setup
What are the project requirements/dependencies? Where are they listed? A requirements.txt or a Pipfile.lock file perhaps? Where is it located?

Proceed to describe how to install / setup one's local environment / get started with the project.


## Usage
How does one go about using it?
Provide various use cases and code examples here.

`write-your-code-here`


## Project Status
Development of ARM templates for the ACP4Gov Azure environment is in progress. Further iterations of templates will be complete as the environment is solidified. 
