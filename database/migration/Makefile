#!/bin/bash

get_pod:
	kubectl get pod postgres-migrate -n chat-app

delete_pod:
	kubectl delete pod postgres-migrate -n chat-app

run_migrations:
	kubectl apply -f pod.yml

view_logs:
	kubectl logs postgres-migrate -n chat-app
