# P2P Automated File Sharing with Git using a centralized time series log

## Type of Project
- Product

## Problem Space
- Distributed Version Control
  + Can use event streaming to get rid of centralized repo
  + Coordinating distributed repositories

## Naive Approach
1. A log
  + Push
    * Log the push
    * If a member of the network doesn't have a copy of the push,
      check if another member with the files is online
      - Coordinate a read from that member
2. A queue
  + Queue all pushes
    * Distribute from the queue as members log on
      - Requeue while all members haven't received the push
      - Permanently disappears from the queue when it's been fully read

### Features
- Pessimistic locking
  + When a file is open in the system, a push is not possible until it's done editing
- Automatic pushes

## Basic Idea
- There is no centralized code base.
- When a user commits a change, this is considered to be an event.
- This event is then logged.
- When a maintainer is online, a notification is sent to them.
- If the commiter is online, an automatic pull can be coordinated.
- Once the commit is approved, an approval event is sent to the log.
- Other automatic pulls can be coordinated.

## Events
- Commits
- Approval
- Logging on
- Pulls
