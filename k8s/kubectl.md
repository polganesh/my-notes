# deploy as docker image to k8s cluster

- __syntax__   
  - _create deployment_ -  kubectl run __deployment-name__ --image=__docker-image-with-tag__ --port=__port__
  - _create service_ - kubectl expose deployment __deployment-name__ --type=LoadBalancer
- _example_
  - kubectl run hello-aws-eks --image=228955010194.dkr.ecr.eu-central-1.amazonaws.com/poc:latest --port=8080
  
 # view logs of pod
 - __syntax__
   - kubectl log __pod-name__  -n __namespace__
  
  - 
