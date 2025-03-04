'''
1️⃣ Complex Window Function Query
Problem Description: You have a database table sales containing sales data for a store. The table has the following structure:

sale_id	employee_id	sale_amount	sale_date
1	101	500	2025-03-01
2	102	300	2025-03-02
3	101	450	2025-03-02
4	103	700	2025-03-02
5	101	600	2025-03-03
6	102	200	2025-03-03
Task: You need to find out the running total of sales for each employee, ordered by the sale date.

Requirements:

Use a window function to calculate the running total of sales for each employee.
The output should include the employee's ID, sale date, and the cumulative sales total up to that point.
2️⃣ Multi-Join Query with Optimization
Problem Description: You are working with two tables in a database: orders and customers.

The orders table has the following structure:

order_id	customer_id	order_date	order_amount
1	101	2025-02-25	200
2	102	2025-02-26	300
3	101	2025-02-27	150
4	103	2025-02-28	500
The customers table has the following structure:

customer_id	customer_name	customer_age
101	John Doe	35
102	Jane Smith	40
103	Mark Johnson	30
Task: You need to write a multi-join query that:

Joins the orders table with the customers table to get the customer’s name and age along with their order details.
Filters for customers who have placed orders totaling more than 250.
Orders the results by customer_name in ascending order.
Optimization: Ensure your query is optimized by considering appropriate join types and filtering mechanisms to reduce unnecessary computation.

3️⃣ Partitioning & Indexing Problem
Problem Description: You are working with a sales table containing millions of rows of data with the following structure:

sale_id	customer_id	sale_amount	sale_date
1	101	500	2025-03-01
2	102	300	2025-03-02
3	103	700	2025-03-02
4	101	600	2025-03-03
5	104	450	2025-03-03
Task: You need to optimize querying performance for the following two tasks:

Partitioning: Partition the sales table by sale_date to speed up queries that filter by date.
Indexing: Create appropriate indexes to speed up queries that involve filtering by customer_id and sale_date.
Requirements:

Use partitioning to store the data efficiently by date, so queries filtered by sale_date are faster.
Create an index on customer_id and sale_date to optimize filtering and sorting operations.
''' 
