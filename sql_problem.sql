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

''' using pyspark ''' 
  
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, count

spark = SparkSession.builder.appName("BigDataOptimization").getOrCreate()

data = [(i, f"product_{i % 50000}", round(i * 0.1, 2)) for i in range(10000000)]  
df = spark.createDataFrame(data, ["id", "category", "amount"])

df.write.mode("overwrite").parquet("transactions.parquet")

df.spark.CreateOrReplaceTempView('transactions') 

spark.sql(
	'''
	select category, 
		count(*) as freq 
	from transactions 
	group by category 
	order by freq desc 
	limit 1000 ;
	'''  
).show() 

from pyspark.sql.functions import count 

df.groupby('category').agg(count('category').alias('freq').orderBy('freq', ascending = False).show(1000) 
