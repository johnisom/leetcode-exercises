# P2P Git Framework #

This is my take on it. --John

With a simple command, set up a distributed git workflow where everyone else
participating has read and write access. Upon a file change, send a
mini-commit on the "development" branch, and when someone is done checking out
a file, it is merged and pushed to the "main" branch.

## Links to Consider ##

- <https://git-scm.com/book/en/v2/Git-on-the-Server-The-Protocols>
- <https://medium.com/palantir/stemma-distributed-git-server-70afbca0fc29>
- <https://git-scm.com/book/en/v2/Distributed-Git-Distributed-Workflows>


## Features ##

- Check-in
  - When a user "checks in" with the service, pull all changes to the
    respective branches
  - When a user is checked in, all changes in other’s repos is pushed directly
    to user
  - When a user is checked in, all changes on local repo is pushed directly to
    everyone else
    - Maybe actually to centralized source of truth?
- When a file is "checked out" by a user, a lock is placed on it. Any changes
  other users make is to a separate branch, which is then merged when the lock
  is released.

## Problems to Solve ##

- Git servers on everyone’s machine
  - Or a process that polls for changes every 5 seconds, from a centralized
    repository
- Auto-push small incremental changes
  - Process listens for changes to files
