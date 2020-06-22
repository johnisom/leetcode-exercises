# Data Pipeline Orchestration

## Problem Space

- Moving data from one system to another
  - Determine how and when to move the data
- Things you may want to do with the data along the way
  - 'Integrate' data from multiple sources
  - Quality check
  - Standardize
  - Secure
  - Merge
  - Share
  - Transform

## Example

- Pulling records from separate real estate databases to form a single set of records

## Challenges

- Changing schemas
  - A data source may change a type
  - A Data source may use a different format
  - A data source may make small syntactic changes (a comma)
    - Mike Driscoll, "The best minds of my generation are deleting commas from log files, and that makes me sad."
- Input / Output failures
  - Monitoring systems fail / error
    - Disk space fills
    - OS reboots
  - Server fails
  - Too many concurrent transactions
  - Human error
- Bursts of data loss
  - Perhaps caused by previous challenges
  - Can lead to erroneous analysis
  - Loose productive time analyzing previuos failuresf
- Scaling
  - Distributed processing significantly more challenging than monolithic

## Sources

- https://www.alooma.com/answers/what-is-the-difference-between-a-data-pipeline-and-an-etl-pipeline
- https://www.alooma.com/blog/building-a-professional-grade-data-pipeline
- https://blogs.informatica.com/2019/08/20/data-processing-pipeline-patterns/

### Related Topics

- https://softwareengineeringdaily.com/2020/06/02/holoclean-data-quality-management-with-theodoros-rekatsinas/
- https://softwareengineeringdaily.com/2020/06/04/prisma-modern-database-tooling-with-johannes-schickling/
- https://softwareengineeringdaily.com/2020/06/09/human-in-the-loop-data-analytics-with-aditya-parameswaran/
