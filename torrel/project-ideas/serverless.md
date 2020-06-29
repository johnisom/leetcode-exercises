# Serverless Execution Model

## Problem Space

- Managed servers
  - Traditionally, servers are always running, awaiting a response to server a users request
  - Expensive use of resources
    - Computational resources
    - Constant mainenance

### Serverless Concept

- Servers not directly managed by the developer
  - Cloud computing model
  - Schedule and deploy servers
    - Stateless containers (Hackernoon)
    - Event triggered
    - Ephemeral
  - Server only loads and operates in response to a user request (Software Engineering Daily)
  - Use client side logic and third-party services
- Multi-tenancy-based architecture
- Setting up multiple environments as simple as setting up one
  - No dev, staging, and production machines
- Automatically scale

### Problems with Serverless

- Serverless functions accessed only as APIs
  - API Gateway
- External dependencies must be packaged into the app
  - Not a fit for larger projects
- Hard 300-second timeout
- Lack of control over instances
  - Hard to debug
- Security
- Disaster recovery
- Immature technology
- Architectural complexity
- Local testing
- Restrictions on local state
- Lack of operational tools
- Request latency

### Challenges with node based solutions

- Cold start
  - If a process is deployed on a node, it may take 500 ms to 3 sec start
    - If it's meant to handle a request, it should start in 5 ms
    - Delays request handling for some users
    - Occurs every time the nodes are supposed to start; this is what happens with AWS Lambda for example
- Context switching
  - Server ends up just switching from one bit of code to another
  - Not serving the client's site

#### Potential solution to cold start and context switching

- No node Model
  - A single virtual machine balances individual processes
  - Instead of spinning up a new node for a request, each request gets its own dedicated process (Cloudfare Isolate)
    - 5 ms start
    - Less memory
  - Lambda spins up a containter while Isolate just a context
  - Dealing with a worker
  - Well-suited for stateless use cases
  - Well-suited for static assets
  - Well-suited for 'edge computing' (Cloudfare Serverless... page 9-10)

#### Challenges with process / no node model

- No system calls
  - Everything done through an API
  - Similar to writing code in the browser
- No current internal data store

## Sources

- Software Engineering Daily
  - Cloufare Serverless with Zack Bloom
  - https://softwareengineeringdaily.com/wp-content/uploads/2019/11/SED955-Cloudflare-Products.pdf
- Hackernoon
  - https://hackernoon.com/what-is-serverless-architecture-what-are-its-pros-and-cons-cc4b804022e9
