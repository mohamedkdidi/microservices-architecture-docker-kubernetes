[![Current build](https://github.com/mohamedkdidi/microservices-architecture-docker-kubernetes/actions/workflows/node.js.yml/badge.svg)](https://github.com/mohamedkdidi/microservices-architecture-docker-kubernetes/actions/workflows/node.js.yml)
[![Coverage Status](https://coveralls.io/repos/github/mohamedkdidi/microservices-architecture-docker-kubernetes/badge.svg?branch=main)](https://coveralls.io/github/mohamedkdidi/microservices-architecture-docker-kubernetes?branch=main)
![Current Release](https://img.shields.io/github/release/mohamedkdidi/microservices-architecture-docker-kubernetes/all.svg)
[![Code Style Prettier](https://img.shields.io/badge/Code%20Style-Prettier-ff69b4.svg)](https://github.com/prettier/prettier)

## Microservices deployment using Docker and Kubernetes

Demonstrating and building a HTTP microservice-based architecture that is deployed on Kubernetes. All the samples may be easily deployed on local Kubernetes single-node cluster - Minikube.

### Requirements
Make sure you have the latest Docker and docker-compose installed. You may also want to have Minikube installed.


### Architecture

### Used technologies

- [Node.js](https://nodejs.org/en/)
- [Swagger](https://swagger.io)
- [Kubernetes](https://kubernetes.io/)
- [Helm](https://github.com/kubernetes/helm)


### Quickstart


#### Setup
Clone the repository:
```
mkdir microservices-workshop 
cd microservices-workshop
git clone https://github.com/mohamedkdidi/microservices-architecture-docker-kubernetes.git .
```

#### Start the application
```
docker-compose up
```


#### Production builds
Run the following for a production setup. The main difference with the test version is live-reloading — The production version doesn't live-reload any changes and will require you to re-build your images.

```
docker-compose -f docker-compose.prod.yml up
```


#### Options


### Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)


### License

[MIT](license)
