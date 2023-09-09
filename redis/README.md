## Redis

Redis, which stands for Remote Dictionary Server, is an in-memory data storage and caching system that serves as a high-performance key-value store. It is designed for speed and efficiency, allowing data to be stored in memory for lightning-fast access and retrieval.

### Roles

Get role:

```
kubectl exec -it redis-cluster-<number> -n cluster-app -- redis-cli role
```

Get ip:

```
kubectl get pods -n cluster-app -l app=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP} '
```

Set role:

- Or execute roles.sh.

```
kubectl exec -it redis-cluster-0 -n cluster-app -- redis-cli --cluster create --cluster-replicas 1 <ip>:6379
```

### Service address:

FQDN:

- Port: 6379.

```
 redis.cluster-app.svc.cluster.local
