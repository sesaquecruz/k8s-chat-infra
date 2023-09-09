## RabbitMQ

RabbitMQ is a message broker that facilitates communication between different components or systems in a distributed computing environment. It acts as a mediator, enabling data exchange by queuing, routing, and delivering messages between applications and services.

### Operator

Create operator:

```
kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"
```

### Cluster

Create namespace:

```
kubectl create namespace cluster-app
```

Create cluster:

```
kubectl apply -f cluster.yml
```

### Management

Get default username:

```
kubectl get secret rabbitmq-default-user -n cluster-app -o jsonpath='{.data.username}' | base64 --decode
```

Get default password:

```
kubectl get secret rabbitmq-default-user -n cluster-app -o jsonpath='{.data.password}' | base64 --decode
```

Create proxy:

- The management can be accessed on localhost:15672.

```
kubectl port-forward svc/rabbitmq -n cluster-app 15672:15672

```

### Service address:

FQDN:

- Port: 5672.

```
 rabbitmq.cluster-app.svc.cluster.local
```
