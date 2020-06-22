# Micro Frontends #

While many teams have adopted a microservice architecture on the back end,
most front-end applications are still monoliths. These front-end monoliths
face some of the same issues as back-end monoliths did, and can actually
neutralize the benefits of the back-end microservice architecture. Micro
front-ends is a term for using microservice architecture for the front-end
portion of the application, which solves many of the issues that a monolithic
application creates.

## Problem Space ##

Many organizations have adopted a microservice architecture back-end, yet are
struggling with monolithic codebases for the front-end.

- Features need to be added
- Code needs to be changed
- Development needs to be scaled up to multiple teams

### Monolithic ###

Problems with the current monolithic architecture:

- No easy place in codebase to start integrating new changes
- The existing build process doesn’t easily allow for different tools to be
  added
- Different teams can’t work on the same product without some serious managing
  overhead
  - Otherwise, everyone steps on each other’s toes.
- Development is painful and inefficient

## Key Benefits ##

- Smaller and more cohesive codebases
  - Codebase for a specific micro frontend is smaller than monolith code
    - Smaller codebase == programmer happiness and efficiency
  - Makes bad decisions hard and good decisions easy
    - Eg. no weird communications or shared domain models
- Independent deployment
  - Each micro frontend has own continuous delivery pipeline
  - The micro frontends are decoupled so updating one of them leads to
    successful deployment
- Decoupled and autonomous teams
  - Teams have full ownership of their micro frontend
    - Move effectively and efficiently
- Upgrades, rewrites, and updates are able to be applied incrementally
  - No full rewrites (multi-month stressful project)
    - Old code is eventually strangled out with micro frontends
  - Better for agile development

## Downsides ##

- Sometimes dependencies are duplicated
  - Bigger download sizes
- When teams are autonomous, they may cause fragmentation in the way they work
- Still a new field, and hasn’t had the test of time applied to it

## Example Integration Approach ##

Given a generic application, there are multiple natural boundries for micro frontends:

- Container application
  - The stuff that is on every page, like navbar and footer
- Page 1
  - Page 1 is just a page of the application
- Page 2
  - Page 2 is just a page of the application
- Page 3
  - Page 3 is just a page of the application
- ⋮

And then there are many ways to actually deploy it, whether it be build-time
integration or real-time integration with iframes, Web Components, or
JavaScript.

## Diagrams ##

### Independent Deployment ###

![Independent deployment
pipelines](https://martinfowler.com/articles/micro-frontends/deployment.png)

### Autonomous Teams ###

![Autonomous Teams
Responsibilities](https://martinfowler.com/articles/micro-frontends/horizontal.png)

## Sources ##

[Micro Frontends by Cam Jackson
(https://martinfowler.com/articles/micro-frontends.html)](https://martinfowler.com/articles/micro-frontends.html)
