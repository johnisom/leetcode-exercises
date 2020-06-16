# P2P Automated Version Control with Git using a centralized time series log

## Type of Project
- Product / Framework

## Problem Space
- Distributed Version Control
  + With distributed version control the complete codebase and version history is stored on every developer's computer
  + Git was meant to be a decentralized version control system
    * Teams use Github which is centralized
    * Although using a centralized repo doesn't prevent Git from being decentralized, it's not a purely decentralized Git.
  + Using Git without a centralized repository requires overhead of communication to perform manual merges

### Potential Solution
- Automate file sharing
  + Limit communication overhead
- An event log can get rid of a centralized repo
  + An event log is a central point of communication that members of a network reference
  + When an event occurs, members of the network can respond to it as necessary
  + Instead of storing code in a central location, we can simply store the event.
  + An event is a minimum amount of information necessary to convey that an something occurred.
- A log is history of occurrences in chronological order
  + We can log our events in a central location
  + A time series database uses time as a primary reference point

## Basic Idea
- There is no centralized repo.
- When a user commits a change, this is considered to be an event.
- This event is then logged.
- When a maintainer is online, a notification is sent to them.
- If the commiter is online, an automatic pull can be coordinated.
- Once the commit is approved, an approval event is sent to the log.
- Other automatic pulls can be coordinated.

## Alternative Approach
- A queue
  + Potentially Kafka
  + Queue all occurrences of a push
    * Distribute from the queue as members log on
      - Requeue while all members haven't received the push
      - Permanently disappears from the queue when it's been fully read

## Challenges
- Permissions
- Single points of failure
- Coordinating multiple staged commits
- Merge conflicts

## Sources
- DVCS: https://www.perforce.com/blog/vcs/what-dvcs-anyway#:~:text=What%20Is%20a%20Distributed%20Version,files%20are%20tracked%20between%20computers.
- Git:
  + https://git-scm.com/book/en/v2/Distributed-Git-Distributed-Workflows
  + https://git-scm.com/about/staging-area
- Distributed Git server: https://medium.com/palantir/stemma-distributed-git-server-70afbca0fc29
- Event Streaming: https://www.youtube.com/watch?v=T3Qkl59okjo
- 
