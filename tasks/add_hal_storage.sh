#!/bin/bash 


hal config storage s3 edit --access-key-id $1 --secret-access-key  --region $2 
