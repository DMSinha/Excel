select 
    sum(sold_quantity) as qty
from fact_sales_monthly s
join dim_customer c
on s.customer_code= c.customer_code
where get_fiscal_year(s.date)=2021 and c.market="India"
group by c.market