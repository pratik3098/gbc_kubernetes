
##### If deploying the setup on a baremetal server #####
mkdir -p /data/
kubectl create -f local-storageclass.yaml 

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



#### Note: Kubernetes Metrics server needed to run the Horizontal Pod Autoscalers ####
kubectl create -f mongodb-hpa.yaml 

kubectl create -f app-hpa.yaml 

