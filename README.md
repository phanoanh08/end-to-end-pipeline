# end-to-end-pipeline

## Requirements
Build a PostgreSQL container that stores data as a warehouse. 

Install packages in [requirements.txt](https://github.com/phanoanh08/end-to-end-pipeline/blob/main/requirements.txt) file.

## ELT
Data firstly is extracted from [brazillian-ecommerce](https://github.com/phanoanh08/end-to-end-pipeline/tree/main/brazilian-ecommerce) folder to PostgreSQL as raw data.

DBT is a tool that loads and transforms raw data from the warehouse.

The following is the flow of transforming data in DBT:
<p align="center">
  <img src="https://github.com/phanoanh08/end-to-end-pipeline/blob/main/LineageGraph.png" width="1200" >
</p>

## Data Visualization
The data transformed is presented in a table format using Streamlit framework

The following is illustration:
<p align="center">
  <img src="https://github.com/phanoanh08/end-to-end-pipeline/blob/main/visualization.png" width="1200" >
</p>
