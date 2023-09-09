#!/bin/bash

urls=$(kubectl get pods -n cluster-app -l app=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP} ')
command="kubectl exec -it redis-cluster-0 -n cluster-app -- redis-cli --cluster create --cluster-replicas 1 "

for url in $urls
do
    command+=$url":6379 "
done

echo "Execute: " $command
