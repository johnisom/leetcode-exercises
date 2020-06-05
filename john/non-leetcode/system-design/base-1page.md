# BASE #

*Note: read the CAP & ACID cheatsheets first.*

Eventually-consistent databases are said to provide BASE, where it stands for
**B**asic **A**vailability, **S**oft state, **E**ventual consistency.

Basic Availability: Reads and writes are always available without consistency.  
Soft State: No hard state because it will be eventually consistent. We only have
a probability of knowing the actual state.  
Eventual Consistency: After some amount of time, we eventually know the actual state
of the system, causing future reads to be consistent.

The general idea is that to be able to always have data available in a distributed
database, data may be stale before eventually updating and becoming
consistent. This is in contrast to ACID, which is a set of db transaction
properties that requires that the whole of the transaction is completed at
once. In BASE, the transaction occurs on one node and is eventually propagated
and resolved to a common value on every node.

## Historical Context ##

- Reliability is important for a database
- ACID is used, but has some issues:
  - Locks all nodes when writing to a distributed database
    - Low availability
  - Not required in many cases
  - Slow
- Thus BASE was born
  - Available now, accurate later
  - Writes to one node of distributed database, then syncs up with a
    resolution algorithm to eventually provide consistency
  - Alternative to ACID for providing data reliability
    - Fixes some of ACID’s failings
    - Introduces some issues of it’s own that ACID doesn’t have

## Pros & Cons ##

### ACID ###

Pros:

- Intense data integrity
- Complete data consistency
- Transaction is either complete or not complete
- Transaction is not lost (durability)
- Good for things where exact transaction values are really important, like
  banking & finance

Cons:

- Low availability
  - All distributed nodes need to be locked until the db transaction is
    verified
- If a single node breaks, the whole system breaks (dependent on exact
  implementation)
- Slow writes

### BASE ###

Pros:

- High availability
- Fast writes
- Can survive downed nodes
- Flexible
- Fits most distributed use cases
- Asynchronous

Cons:

- Race conditions/write conflicts
- Bad for banking & finance
- Data loss
- Not everything is consistent *now*
