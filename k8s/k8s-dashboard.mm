# check token name

kubectl describe secret eks-admin-token-<some-random-check> -n kube-system


# start kubectl proxy

kubectl proxy

# check k8s dashboard
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#!/login

#more info at 
https://docs.aws.amazon.com/eks/latest/userguide/dashboard-tutorial.html
