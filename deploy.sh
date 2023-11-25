#!/bin/bash

# Load PAT from an environment variable or a file
GITHUB_TOKEN=$GITHUB_TOKEN

#Git commands
touch file backend3.txt
git add .
git commit -m "add files"

# Using the token for authentication
git -c "http.https://github.com/.extraheader=AUTHORIZATION: basic $(echo -n "username:$GITHUB_TOKEN" | base64)" push

