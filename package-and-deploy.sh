#!/bin/sh
sam package --output-template packaged.yaml --s3-bucket user-lambda
aws cloudformation deploy --template-file /home/mumtaz/code/aws/user-lambda/packaged.yaml --stack-name user-lambda --capabilities CAPABILITY_IAM
