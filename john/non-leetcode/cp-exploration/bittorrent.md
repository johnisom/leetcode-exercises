# BitTorrent (BT) #

BitTorrent is a p2p file-sharing protocol for distributing data and files in a
decentralized manner.

## Problem Space ##

Why torrent, why p2p, and why decentralized?

Well, there are some issues that exist with regular client-server
architecture.

### Client-Server ###

In a traditional client-server architecture, the client sends a request to a
server for a resource and the server serves the requested resource. This can
be harmful for many reasons:

- If the server goes down (for any reason), then the file can’t be downloaded
- If the server can’t keep up with the rate of requests, denial-of-service
  occurs
- The server can be very far away from the client, increasing latency and
  potentially decreasing bandwidth
- The server may be in a different region with different laws and regulations
  that prohibits the file download
- If the client has high bandwidth capability, downloading from a single
  server can be slower than from multiple
- Head-of-line blocking occurs if packets arrive out of order or not at all
- If the server is hacked, a malicous file can be served to the unwitting
  client
- If the transport protocol for the file doesn’t support partial/resumed
  downloads, the file being downloaded is large, and the connection is lost
  between client and server, then the whole file needs to be redownloaded

### Other P2P Solutions ###

A solution to some of the above problems can be realized in the form of this
naïve p2p protocol:

1. You (peer A) wish to download cat.jpg
2. You reach out to peers B-Z, one at a time, in that order asking if they
   have cat.jpg
   - Assume that peers B-Z are sorted for bandwidth and latency
3. If no peers have cat.jpg, the download isn’t available
4. You then download from the first peer that has cat.jpg and stop searching
5. If the download stops, is too slow, or the regulations in the server’s
   region prohibit the download, stop downloading and go to step 2, starting
   at the next peer in the list

This proposed protocol fixes these problems:

- Server goes down (peer A moves on to next peer)
- Server is too slow (peer A moves on to next peer)
- Server is too far away (there are many peers, many of which are close)

Though the proposed basic p2p protocol fixes many of the above issues, there
are still some that are left unresolved:

- The client has high bandwidth and the server/peer doesn’t make full use of
  it
- Head-of-line blocking
- Hacked server/peer
- Redownloading of large files

The naïve protocol even introduces some issues of its own:

- Peer A needs to be aware of peers B-Zs’ existence
- A peer spends the majority of time sitting idly

This proposed protocol is unsatisfying, and arguably worse than the
traditional client-server model.

## The BitTorrent Protocol ##

The BitTorrent protocol fixes all of the above issues that were pointed out.

It works like this:

1. The original seeder has a copy of a file they want to share. They create a
   torrent file with the metadata and upload it to a server somewhere
2. You (peer A) download a torrent file (`file-name.torrent`) from a server
   that contains metadata about the file
   - The metadata includes cryptographic hashes (checksums) of each piece of
     the file
      - This prevents modifications of the file (accidental and malicous)
   - The metadata also contains information regarding a tracker server
     (covered later)
3. You (peer A) contact the tracking server and get a list of IP addresses of
   current peers in the swarm that have this file
4. You begin to download different pieces of the file from these peers
   simultaneously
5. When the download is completed and the pieces are put together, you start
   seeding the file to other peers
   - This allows other peers to download portions of the file from you

Here’s a good illustration/animation of the protocol:

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/3/3d/Torrentcomp_small.gif" alt="Animation of protocol use" title="Animation of protocol use">
</p>

### Problems BT Solves ###

The BitTorrent protocol fixes many problems that the client-server model and
naïve p2p protocol introduce:

- Because the file is downloaded in pieces and then reassembled, head-of-line
  blocking isn’t much of a concern
- Because the the file is downloaded in pieces simultaneously, speeds aren’t
  easily throttled
- Because of the cryptographic hashes in the torrent descriptor file, the file
  you get won’t be hacked
- Because the file is downloaded in pieces, if the download is stopped midway
  through, only the pieces that were midway thru downloading need to be
  redownloaded
- By use of the tracker server (explained later), peer A knows of peers B-Zs’
  existence
- Because the download occurs between multple peers at a single time, peers
  are always active, either downloading pieces or seeding pieces of the file
- Reduces load on any 1 node

### Problems BT Introduces ###

While BT certainly fixes a lot of issues, it comes with a lot of its own:

- If the swarm size is small enough, it may be impossible to download the file
  (as nobody can serve it)
- Each individual peer will be under greater load than if they were simply a
  client to some server
  - Though BT reduces load on servers by eliminating them
- There is a negative stigma associated with BT
- Each peer needs a specialized BitTorrent client, which is a downloaded app
  - WebTorrent fixes this
- Slower than client-server because multiple connections need to be kept open
  and the peers have slow upload rates
- Domain of use for BitTorrent is smaller than TCP/IP or HTTP
  - Pretty much just for sharing large files P2P

### Terminology ###

#### "Swarms" ####

A “swarm” is the group of peers specified in the tracker server that has info
about the file you’re currently downloading/seeding. “Info about the file,”
more precisely means the whole file, the partial file, or the torrent file.

#### Seeding ####

Seeding is the act of uploading pieces of the file to other peers after you
have finished dowloading it.

#### Tracker Server ####

This is a server that keeps track of a list of IP addresses of peers in a
swarm. When a peer wants to download a torrented file, they contact the
tracker server. The tracker server sends back a list of IP addresses to check
out, and also adds the new peer’s IP address to the list. When a peer has been
disconnected from the swarm for 15 mins (or any other specified length of
time), their IP address is removed from the tracker server’s list.

## Misconceptions ##

- Not illegal unless you partake in illegal activity yourself
  - Downloading and seeding your favorite Linux distribution is quite legal
  - Downloading or seeding copyrighted works that you and the other peers
    don’t own or don’t have a license to is illegal

## Future Directions ##

The algorithm discussed is the old version. The new version is purely
decentralized without tracker servers. Each peer has a DHT.

## TODO ##

Look at use cases and alternatives

- IPFS
  - Components it uses
- DHT

## Sources  ##

*Wikipedia*: <https://en.wikipedia.org/wiki/BitTorrent>  
*Zac Klammer*: @zklamm  
Other mostly-unhelpful sources ranging from Quora to StackExchange were used
as well.
