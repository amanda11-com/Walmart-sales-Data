use Walmartsql
go
select * from [Walmart 3]

Question 1; which store made the highest sale?
select top 1 Store, date, Weekly_sales from [Walmart 3]
order by Weekly_sales desc

Question 2; Show the total weekly sales for holiday weeks and non holiday weeks
select holiday_flag, sum(weekly_sales) as Total_WeeklySales from [Walmart 3] group by Holiday_Flag
 
Question 3; what is the total sales made?
select sum(weekly_sales) as Total_sales from [Walmart 3]

Question 4; which store had the highest unemployment rate and how much was made?
select top 1 date, Weekly_Sales, store, unemployment from [Walmart 3] 
order by Unemployment desc

Question 5; what was the total sales made each year?
select year(date) as year, sum(weekly_sales) as total_sales from [Walmart 3]
group by year(date)
order by total_sales desc

Question 6; what are the top 3 stores that made the most sales in a week?
select top 3 store, weekly_sales from [Walmart 3] 
order by weekly_sales desc

Question 7; Which week was fuel price high and how much was made?
select top 1 date, weekly_sales, fuel_price from [Walmart 3]
order by fuel_price desc

Question 8; How much was made in the week with the highest inflation % ?
select top 1 date, weekly_sales, cpi from [Walmart 3]
order by cpi desc

Question 9; which store had the lowest unemployment rate and how much was made? 
select top 1 date, weekly_sales, store, unemployment from [Walmart 3]
order by unemployment asc 

Question 10; what is the average weekly sales across all stores?
select store, avg(weekly_sales) as avg_sales from [Walmart 3]
group by store 
order by store asc