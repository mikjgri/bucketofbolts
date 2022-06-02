#!/bin/bash

set -e

function cleanup {
    pkill -P $$
    wait
}
trap finish EXIT


kubectl port-forward -n a-namespace service/a-service 7000:80 &
kubectl port-forward -n another-namespace service/another-service 7001:80 &

sleep 1
echo Ctrl-C to exit...
sleep infinity
