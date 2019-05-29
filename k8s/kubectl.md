# deploy as docker image to k8s cluster

- _syntax_   
 -kubectl run __pod-name__ --image=__docker-image-with-tag__ --port=__port__
- _example_
 - kubectl run __pod-name__ --image=228955010194.dkr.ecr.eu-central-1.amazonaws.com/poc:latest --port=8080
