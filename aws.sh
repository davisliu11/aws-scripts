# list asgs that are with desired capacity as 1
aws autoscaling describe-auto-scaling-groups --region us-east-1 | jq .AutoScalingGroups | jq -c 'map(select(.DesiredCapacity == 1))' | jq -c '.[].Tags[]' | jq -c 'select(.Key=="Name")' | jq .Value -r
