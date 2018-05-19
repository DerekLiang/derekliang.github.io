title: Start AWS Lamda
author: Derek Liang
tags: []
categories:
  - aws
date: 2018-05-18 14:29:00
---
## Install Prerequisites
The easiest way to get started with AWS Lamda is to use aws-sam-cli. Install the asw-sam-cli by following the follwing steps:

1. install Python 2.7
2. `pip install aws-sam-cli`

Since aws-sam-cli using aws CLI, we need to install it as well:

1) `pip install awscli`

If everything install correctly, you should be able to run `sam --version` and `aws --version`.

You might want to install docker as well, the Lamda function was actually run in the docker container. I omit it for it is platform specific.

## Start Your hello-world App
Clone the following repo, https://github.com/awslabs/serverless-application-model.git. There are plenty of examples there. 

The hello-world template is under the `examples/apps/hello-world` folder. 

To create a event, that simulate the HTTP request you would like to have the Lamda function to process. I named it event.json and it looks like the following:

```
{
    "message": "Hey, are you there?"
}
```
To run locally it, you need to invoke it using the following command:
```
sam local invoke helloworld -e event.json
```

Optionally, you can specify `-d 5858` as additional parameter and debug it in VS code, here is the my launch.json file:
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Attach to SAM Local",
            "type": "node",
            "request": "attach",
            "address": "localhost",
            "port": 5858,
            "localRoot": "${workspaceRoot}",
            "remoteRoot": "/var/task",
            "protocol": "legacy"
        }
    ]
}
```

To run it in aws, you need to first package the files to a S3 bucket, and deploy it using cloudformation. To package it, you need to run the following command:

```
sam package --template-file template.yaml --s3-bucket my-bucket --output-template-file packaged.yaml
```

To deploy it, you need to run the following command:
```
aws cloudformation deploy --template-file packaged.yaml --stack-name helloworld --capabilities CAPABILITY_IAM
```

That'it.



      