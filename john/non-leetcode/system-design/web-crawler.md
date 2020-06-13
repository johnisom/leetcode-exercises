# Web Crawler #

## Same-Origin Crawler ##

- If it takes 1 second to process a page, we can do 86.4K pages per
  day on one process
  - 500ms network latency, 500ms parsing
- If there is 100KB per page, we need 8.64GB storage each day
  - For storing data for 10 years, 32TB storage
  - Data is automatically partitioned every 1TB
- We need to write 100KB/s, 1 write per second
- We want to keep data for 2 months before re-indexing

### General Algorithm ###

0. Add seed URLs to queue after checking bloom filter & origin
1. Grab URL from queue
2. Download the HTML file
3. For each ‘<a href=…’, check origin of each URL
   - If same origin, check against bloom filter
     - If in bloom, move to next URL from HTML
     - Otherwise add to filter and queue
   - Otherwise, move to next URL from HTML
4. Store page, metadata, url info in permanent data store
   - Maybe send out event to Kafka (event/message queue)
5. Go to step 1
