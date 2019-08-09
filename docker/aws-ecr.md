#Get  Login details for  ECR and store details in text.text
```
aws ecr get-login (dash dash)region eu-west-3 > text.txt
```

#Login to ECR
```
docker login -u AWS https://aws_account_id.dkr.ecr.eu-west-3.amazonaws.com
```
it will ask for password use password available from text.txt

#Tag Image
```
docker tag cloudwatch_exporte:latest aws_account_id.dkr.ecr.eu-west-3.amazonaws.com/cloudwatch_exporte:latest (replace the aws_account_id by your account id)
```

#Push  Image
```
docker push aws_account_id.dkr.ecr.eu-west-3.amazonaws.com/cloudwatch_exporte:latest (replace the aws_account_id by your account id)
```
