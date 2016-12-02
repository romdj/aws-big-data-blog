#!/bin/bash
currentPath="$(pwd)"/
fileAbsPath="$(echo "file://"$currentPath$1)"

aws cloudformation validate-template --template-body $fileAbsPath \
  && aws cloudformation create-stack --stack-name $2 --template-body $fileAbsPath --capabilities CAPABILITY_IAM 
