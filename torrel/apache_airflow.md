# Data Project

## Apache Airflow

- Data pipeline management / orchestration
- Distributed cron scheduler, batch scheduler
  - Centered around DAGs, directed acyclic graph
    - Orchestrate many SQL queries, ex
    - Operators interface w/ DAG
    - Operator = node in your DAG
    - Operator is a Python class with execution function
  - Jobs to maybe coordinate with:
    - Hadoop
    - Spark
    - Snowflake
    - Hive
  - Mostly an API
