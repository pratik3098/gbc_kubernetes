#!/bin/bash 

## The Persistent volume local filesystem storage 
mkdir -p /data/

### Creating the pvc for the mongodb 
kubectl create -f mongdb-pvc.yaml 


###### Deploying the mongodb statefulset ######
kubectl create -f mongdb-statefulset.yaml 


###### Deploying the mongodb service ######
kubectl create -f mongdb-service.yaml 


###### Creating the app  deployment ######
kubectl create -f app-deployment.yaml 


###### Deploying the app service ######
kubectl create -f app-service.yaml 
