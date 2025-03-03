'''
  You have a dataset with 1 billion rows and need to find the top 1000 most frequently occurring values in a specific column efficiently.
  You can use PySpark or SQL, but it must be optimized for big data
''' 

create index idx_category on transactions(category) ; 
select category , count(*) as freq 
from transactions 
group by category 
order by freq desc 
limit 1000; 
