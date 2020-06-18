# Confict-free Replicated Data Type (CRDT) #

A CRDT is a data structure that can be replicated across multiple distributed
nodes, that when updated independently, can always have any inconsistencies
resolved. This means that if you use a CRDT for an async distributed system,
you can rest assured that any inconsistencies that arise can be easily
resolved.

## Problem Space ##

Managing data across a network where ACID-compliance isn’t necessary and
strong eventual consistency is needed.
- Often P2P

## Problems With Non-conflict-free Data Types ##

- Race conditions
- Data is lost
  - By nature of the data type, non-resolvable conflicts may occur
  - If the conflicts can not be resolved, the only option is to drop data
  - Ex. split-brain scenario
    - 2 data centers, both connected to users, but connection between them is
      lost. Users continue to interact, but make conflicting changes. The
      connection between the data centers is brought back online
    - Without CRDT, data will ultimately be lost, whether dropped entirely or
      stored in a different version
- Overhead associated with reducing/eliminating concurrent updates to
  replicated data
  - Optimistic replication isn’t a feasable approach
    - Optimistic replication is where all updates go through, with the
      understanding that any inconsistencies will be resolved later
      - AKA eventual consistency
- Limits potential of distributed apps, if not eliminating it entirely

## Properties ##

- The full dataset is replicated and distributed to each node
- Updates can happen concurrently (at the same time) on the dataset, provided
  the updates occur on separate nodes
- Doesn’t drop any updates
  - Because all are resolvable
  - No data rollbacks
    - AKA monotonicity
- When nodes eventually communicate with one another, data is successfully
  synced
  - Data can be merged in any order
  - Provides strong eventual consistency

## How? ##

### Operation Based ###

- Commutative-only operations
  - It doesn’t matter in which order the operations occur, always yields same
    result
  - Eg. addition & multiplilcation
- Nodes are sent operations to be performed rather than actual data
- Relies on good network

### State Based ###

- Convergent data types
- Nodes are sent data that has already been updated, not operations
  - More data is sent on the network
- Doesn’t rely on as good of a network

### Data Type Implementations ###

- Counters
- Sets
- Maps (dictionary)
- Arrays

## Use Cases ##

- Collaborative editing/note taking
  - Apple Notes
  - Teletype for Atom
  - Nimbus
  - Conclave (Capstone project)
- Online gambling
- NoSQL key-value store
  - Redis
  - Riak
