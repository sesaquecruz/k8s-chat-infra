# Chat Infra

This repository contains the configuration files for setting up a Kubernetes cluster and deploying the components of the Chat App.


## Applications

Currently the applications are running in a Kubernetes cluster using GKE on GCP.

- [Chat Api (swagger documentation)](https://git.chat.api.sesaque.com/api/v1/swagger/index.html)
- Chat App (web app)

## Repositories

Instructions:

- [Argo CD](./argocd/README.md)
- [RabbitMQ](./rabbitmq/README.md)
- [Redis](./redis/README.md)

GitHub:

- [Chat Api](https://github.com/sesaquecruz/go-chat-api)
- [Chat Broadcaster](https://github.com/sesaquecruz/go-chat-broadcaster)
- [Chat App](https://github.com/sesaquecruz/react-chat-app)

DockerHub:

- [Chat Api](https://hub.docker.com/r/sesaquecruz/go-chat-api/tags)
- [Chat Broadcaster](https://hub.docker.com/r/sesaquecruz/go-chat-broadcaster/tags)
- [Chat App](https://hub.docker.com/r/sesaquecruz/react-chat-app/tags)

## Contributing

Contributions are welcome! If you find a bug or would like to suggest an enhancement, please make a fork, create a new branch with the bugfix or feature, and submit a pull request.

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) file for more information.
