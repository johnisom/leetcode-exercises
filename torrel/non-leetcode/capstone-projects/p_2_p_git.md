# Framework For Setting up P 2 P Git Repos

## Type of Project
- Product

## Problem Space
- Distributed Systems
  + Coordinating distributed repositories
  + Event Streaming

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
