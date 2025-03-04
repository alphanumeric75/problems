

select 
	employee_id, 
	sale_date, 
	sum( sale_amount ) over( 
		partition by employee_id    
		order by sale_date   
		rows between unbounded preceding and current row  
	) as cumulative_sum 
from sales ; 

select * 
from ( 
	select e1.order_id, 
		e1.customer_id, 
		e1.order_date, 
		sum( e1.order_amount) over( partition by e1.customer_id ) as total_sum , 
		e2.customer_name , 
		e2.customer_age 
	from orders e1 
	left join customers e2 on e1.customer_id = e2.customer_id 
 )  as sub_table 
where total_sum > 250 
order by sub_table.customer_id ; 

create table sales as (    
	sale_id int , 
	customer_id int , 
	sale_amount int  , 	
	sale_date date 
) 
partition by range(year(sale_date)) ( 
	partition p0 values less than (2021) , 
	partition p1 values less than (2022 ), 
	partition p2 values less than (2023 ) , 
	partition p3 values less than ( 2024 ) , 
	partition pmax values less than (maxvalue)
) 

