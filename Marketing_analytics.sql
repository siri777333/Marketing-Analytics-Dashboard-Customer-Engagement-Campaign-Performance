create database Marketing_Analytics_DB

---Customer_segmentation---

select
custid,
custname,
gender,
age,
case
 when age<30 then 'young'
 when age between 30 and 50 then 'adult'
  else 'senior'
 end as customer_segment
from [Customers (1)];

  ---avg rating for each customer segment--
 select
  case
  when c.age<30 then 'young'
  when c.age between 30 and 50 then 'adult'
  else 'senior'
  end as customer_segment,
  round(avg(cast(cr.rating as decimal(10,2))),2) as avg_rating,
  count(cr.reviewid)as total_counts
  from [Customers (1)]c
  inner join Cust_review cr
  on c.Custid= cr.Custid
  group by
   case
   when c.age<30 then 'young'
   when c.age between 30 and 50 then 'adult'
   else 'senior'
   end
   
  ---top 5 countries based on avg customer rating---
  select top 5
  co.country,
  round(avg(cast(cr.rating as decimal(10,2))),2) as avg_rating
  from [Customers (1)]c
  join Cust_review cr on c.Custid=cr.Custid
  join Countries co on c.locid=co.countryID
  group by co.Country
  order by avg_rating desc


  ---inactive customers--
  select
  c.custid,
  c.custname,
  c.email,
  c.gender,
  c.age
  from [Customers (1)]c
  left join Cust_review cr on c.Custid=cr.Custid
  where cr.Custid is null;

---Engagement with review ratings---
select
e.productid,
avg(cast(e.likes as decimal(10,2))) as avg_likes,
avg(cast(r.rating as decimal(10,2))) as avg_rating
from engagement_data e
inner join cust_review r
on e.productid=r.productid
group by
e.productid
order by
avg_likes desc;

----higher ratings by checkout customers---
select
case
when cj.stage='checkout'then 'completed checkout'
else 'did not complete checkout'
end as checkout_status,
round(avg(cast(cr.rating as decimal(10,2))),2) as avg_rating,
count(distinct cj.custid)as total_customers
from customer_journey cj
join Cust_review cr on cj.custid=cr.Custid
group by
case
when cj.Stage='checkout' then 'completed checkout'
else 'did not complete checkout'
end;

---avg journey duration by customer--
select
cj.custid,
c.custname,
round(avg(cast(cj.duration as decimal(10,2))),2) as avg_journey_duration
from customer_journey cj
join [customers (1)]c
on cj.custid=c.custid
group by
cj.custid,
c.custname
order by avg_journey_duration desc;