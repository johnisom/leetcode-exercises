# Data Project

## Apache Airflow

- Data pipeline management / orchestration
- Distributed cron scheduler, batch scheduler
  - Centered around DAGs, directed acyclic graph
    - Orchestrate many SQL queries, ex
    - Operators interface w/ DAG
    - Operator = node in your DAG
    - Operator is a Python class with execution function
  - Components
    - Operator
    - DAG
    - Task
    - Connection
    - Hooks
    - Variables
  - Jobs to maybe coordinate with:
    - Hadoop
      - Software framework for distributed storage
    - Spark
    - Snowflake
    - Hive
      - Data warehouse sofware project
  - Mostly an API

## DAG

- Directed acyclic graph
  - Dircted graph that has a sequence of verices such that every edge is directed from earlier to later in the sequence
