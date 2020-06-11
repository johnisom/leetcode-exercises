# Istio

## What Istio technology is
- A platform for running distributed microservices.
  + Manage microservice deployments
    * Connect
    * Secure
    * Control
    * Observe, monitor
- Open Source
- Touts itself as environment agnostic
  + Although associated with / works well with Kubernetes

## Pattern (i.e. API Gateway, Service Mesh, Message Queue)
- Service mesh

## How it works in the context of distributed systems
- Sidecar proxies deployed throughout an environment to intercept network communication between microservices. This allows:
  + Load balancing
    * Ingress gateway: load balancer at edge of mesh receiving incoming traffic
    * Kubernetes Ingress
    * Or, Istio Gateway
  + Controlling traffic
    * Rate limiting
    * Implementing quotas
    * Access control
  + Metrics and logs
  + Authentication and authorization

![Istio Architecture](https://istio.io/latest/docs/ops/deployment/architecture/arch.svg)
(Photo thanks to istio.io)

### Envoy
- Description:
  + Proxy server for sidecars
  + Unaware of network topology
  + Works with any application language
- Benefits pertinent to Istio
  + Since Istio aims to be environment agnostic, a server that allows work in any language is useful
  + Microservices are meant to allow implementing each service in a stack appropriate to the problems the apps solve.
    * Therefore, allowing network communication in arbitrary languages is important

## Why this technology is beneficial to a technology org
- Allows a team to free itself from writing and maintaining inter-service communication logic
  + Application developers can focus on business logic
    * No need to write client libraries (benefit of Envoy)
  + Devops can monitor services in the service mesh from one vantage point
    * Presumably simple, pre-built platform

## Use cases
1. Company transitioning to microservices
  + Use prior to building/configuring communication between services
    * No need to build out communication network between services
2. Company already using microservice architecture
  + Wants to unify orchestration of communication
  + Or, is experiencing problems with current communication configuration
    * Ex, having trouble with service discovery
    * Or, current communication network is difficult to understand and maintain

## Challenges
- Service Mesh
  + A service mesh is not as straigthforward to implement as an API gateway, for example
  + Service mesh is an immature technology which may be risky for high priority applications
  + Moving to a service mesh doesn't allow preservation of current deployment structure. No turning back!
