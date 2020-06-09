# Evolution of Twitter

## 10 req / sec
### Requirements
- Assume 100 more reads than rights
  + Calculate 100 feeds for reads
  + A write every 10 sec
  + Each write can propogate to ~ 100 updates of feeds assuming
    each user has on average 100 followers
- Each tweet is ~ 1.5 kb
  + Write 0.15 kb / sec
- 3 concurrent app processes
  + Each process takes ~ 300ms to complete
  + Uses ~ 1G of available 16G of RAM
  + 300 mb for each concurrent app
- Storage
  + Assume storing for 5 years
    * Need 30G of storage

### Architecture
- Single web server
  + Utilizes a file storage system for videos and static files
- Single app server
  + Cache tweets with a read through cache
  + Send notifications to 10 followers / sec
- Single database
  + Provides 1 TB of storage
  + 1 replica for redundancy

## 100 req / sec
- 100 feed generations
- 1 write per second
  + 1.5kb / sec
- 30 concurrent app processes
  + ~ 10G of available 16G of RAM
- Storage
  + 300G

### Architecture
- Single web server
  + Utilizes a file storage system for videos and static files
- Single app server
  + Sends 100 notifications
- Single database
  + Provides 1 TB of storage
  + 1 replica for redundancy

## 1000 req / sec
- 1000 feed generations
- 10 writes / sec
  + 15kb / sec
- 300 concurrent app processes
  + ~ 100G of RAM
- Storage
  + 3TB

### Architecture
- Single web server
  + Utilizes a file storage system for videos and static files
- Horizontally scale app server
  + Introduce load balancing
  + Send 1000 notifications
- Single database
  + Vertically scale
    * TB of storage
  + 1 replica for redundancy

## 10000 req / sec
- 10000 feed generations
- 100 writes / sec
  + 150kb / sec
- 3000 concurrent app processes
  + ~ 1TB of RAM
- Storage
  + 30TB

### Architecture
- Introduce CDN for videos and other static files
- Horizontally scale web servers
- Multiple app servers
  + Send 10000 notifications
- Single database
  + Vertically scale
    * 30TB of storage
  + Multiple replica
