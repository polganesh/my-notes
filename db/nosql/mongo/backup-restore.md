# How to take backup 

sudo docker run 
--rm -v $(pwd):/workdir/ 
-w /workdir/ mongo:4.0 
mongodump 
-d **database-name** 
--username **database-root-username** 
--password **database-root-password** 
--host **database-ip**:27017 
--authenticationDatabase admin 
--authenticationMechanism SCRAM-SHA-1 
--gzip -o **dump-name**
