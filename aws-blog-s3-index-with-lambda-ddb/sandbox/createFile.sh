#!/bin/bash
for i in {1..5}
do
    aws s3 cp empty.txt s3://s3-eu-west-1.amazonaws.com/romdj-testbucket-monitored/empty$i.txt
done
   # touch files/$i.txt
