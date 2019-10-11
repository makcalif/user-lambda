sam init --runtime python3.6 -d pip  --name user-lambda 
aws s3 mb s3://user-lambda
sam package --output-template packaged.yaml --s3-bucket user-lambda
aws cloudformation deploy --template-file /home/mumtaz/code/aws/user-lambda/packaged.yaml --stack-name user-lambda --capabilities CAPABILITY_IAM

-- run locally python lambda

--couldn't make this work
pip install ptsvd --system  -t ./build/

-- workaround for now
 pip install requests
 pip install boto3
 pip install ptvsd
 pip show boto3
 ls ~/.local/lib/python2.7/site-packages/
 
-- this one didn't work for remote debug
 sam local start-api -d 5890
 
-- for now just run below and keep changing code without debuggin

 sam local start-api -d 5890
 
