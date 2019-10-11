import boto3

class Topic :

    def __init__(self):
        self.a = "b"

    def publish(self):

        # Create an S3 client
        sns = boto3.client('sns')

        # Publish a simple message to the specified SNS topic
        response = sns.publish(
            TopicArn='arn:aws:sns:us-east-1:287758680514:UserSNSTopic',    
            Message='Hello World!',    
        )

        # Print out the response
        print("sns response {}".format(response))

        print('published to sns')

        return response
