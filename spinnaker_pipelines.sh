#!/bin/bash

curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:8084/tasks'  --data '{
  "application": "testinfra",
  "job": [
    {
      "application": {
        "description": "Gate Testing Application",
        "email": "testuser@testhost.org",
        "name": "testinfra",
        "platformHealthOnly": true
      },
      "account": "my-kube-account",
      "type": "createApplication",
      "user": "[anonymous]"
    }
  ],
  "description": "Create Application: testinfrastructure"
}'


sleep 5s



curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:8084/pipelines' --data '{
  "name": "statefulset-pipeline",
  "limitConcurrent": "true",
  "parallel": "true",
  "lastModifiedBy": "anonymous",
  "application": "testinfra",
  "stages": [
    {
      "clusters": [
        {
          "volumeSources": [],
          "account": "my-kube-account",
          "cloudProvider": "kubernetes",
          "region": "default",
          "namespace": "default",
          "targetSize": 1,
          "regions": [
            "default"
          ],
          "application": "testinfra",
          "provider": "kubernetes",
          "kind": "StatefulSet",
          "containers": [
            {
              "requests": {
                "cpu": "100m",
                "memory": "200Mi"
              },
              "imageDescription": {
                "repository": "nginx"
              },
              "name": "nginx",
              "limits": {
                "memory": "200Mi"
              },
              "imagePullPolicy": "ALWAYS"
            }
          ]
        }
      ],
      "type": "deploy",
      "refId": "1",
      "name": "Deploy"
    }
  ],
  "keepWaitingPipelines": "false"
}'

curl -X POST -H 'Content-Type: application/json' -i  'http://localhost:8084/pipelines/testinfra/statefulset-pipeline' --data '{
  "application": "testinfra",
  "job": [
    {
      "type": "manual",
      "user": "[anonymous]"
    }
  ],
  "description": "Create StatefulSet in Application testinfrastructure"
}'

