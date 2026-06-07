use ecommerece;
#most underperforming product category by region 
SELECT Product_Category,
       Region,
       SUM(Revenue) AS Total_Revenue,
       SUM(Orders) AS Total_Orders
FROM Data1
GROUP BY Product_Category, Region
ORDER BY Total_Revenue ASC;
Q2 Is higher marketing spend actually improving orders and revenue?(not True)
select Orders ,Revenue,Marketing_Spend from data1 order by Marketing_Spend desc;
Q3Which regions are getting high website traffic but poor conversion rates?(WEST)
select *from data1;
SELECT REGION,SUM(WEBSITE_VISITS) AS WEBSITE_VISITS,SUM(ORDERS) * 100.0 / SUM(WEBSITE_VISITS) AS CONVERSION_RATE
FROM DATA1 GROUP BY REGION ORDER BY WEBSITE_VISITS DESC;
Q4Which customer segment is most valuable for the business?

SELECT *FROM DATA1;

SELECT CUSTOMER_SEGMENT,SUM(Revenue)AS TOTALREVENUE FROM DATA1 GROUP BY CUSTOMER_SEGMENT ORDER BY TOTALREVENUE DESC;
Q5Are discounts helping sales growth or hurting overall revenue quality?
Select *from Data1;
select Product_Category,region,sum(Revenue) as total_revenue,avg(Discount_Percent) as average_discount
from Data1 group by region,Product_Category order by total_revenue desc;

Q6 Which operational issue is impacting customer experience the most?
according to me it can be no of delivery days taken for which i am trying to perfrom certain task here 
SELECT 
    Region,
    AVG(Delivery_Days) AS Avg_Delivery_Days
FROM Data1
GROUP BY Region
ORDER BY Avg_Delivery_Days DESC;
select region,sum(Revenue) as total_revenue from data1 group by region  order by total_revenue desc;
it clearly shows that the region which takes more time to deliver has less total revenue 

Q7 Which KPI should leadership monitor most closely to improve business growth?

SELECT    MONTH(Order_Date) AS Order_Month,SUM(Revenue) AS Total_Revenue
FROM Data1 GROUP BY  MONTH(Order_Date) ORDER BY Order_Month;
(we can include this month on month growth as 
it clearly shows that we have some sort of zigzag growth one month
we are going up and other we are going down . i think
the next good step would be to dive deep into our discounts given on those
parcticular month in comparsion to other month who arte weak  performets)
SELECT    MONTH(Order_Date) AS Order_Month,SUM(Revenue) AS Total_Revenue,Avg(Discount_percent) as average_discount
FROM Data1 GROUP BY  MONTH(Order_Date) ORDER BY Order_Month;(i cannot see any difference in discount making an impact on revenue growrth)
SELECT    MONTH(Order_Date) AS Order_Month,SUM(Revenue) AS Total_Revenue,Avg(Discount_percent) as average_discount
,sum(Delivery_Days) as total_delivery_days
FROM Data1 GROUP BY  MONTH(Order_Date) ORDER BY Order_Month;
select *from data1;
SELECT    MONTH(Order_Date) AS Order_Month,SUM(Revenue) AS Total_Revenue,Avg(Discount_percent) as average_discount
,sum(Delivery_Days) as total_delivery_days
FROM Data1 GROUP BY  MONTH(Order_Date) ORDER BY Order_Month;
i think the next step would be to check website visits 
SELECT    MONTH(Order_Date) AS Order_Month,SUM(Revenue) AS Total_Revenue,Avg(Discount_percent) as average_discount
,sum(Delivery_Days) as total_delivery_days,sum(Website_Visits) as Total_websitevisits
FROM Data1 GROUP BY  MONTH(Order_Date) ORDER BY Order_Month;
now the next step would be to chose marketing spend 
SELECT    MONTH(Order_Date) AS Order_Month,SUM(Revenue) AS Total_Revenue,Avg(Discount_percent) as average_discount
,sum(Delivery_Days) as total_delivery_days,sum(Website_Visits) as Total_websitevisits
FROM Data1 GROUP BY  MONTH(Order_Date) ORDER BY Order_Month;
SELECT    MONTH(Order_Date) AS Order_Month,SUM(Revenue) AS Total_Revenue,Avg(Discount_percent) as average_discount
,sum(Delivery_Days) as total_delivery_days,sum(Website_Visits) as Total_websitevisits,sum(marketing_spend) as marketing_spend
FROM Data1 GROUP BY  MONTH(Order_Date) ORDER BY Order_Month;

(its basically the marketing spend which get us more customers and we can solve delivery problen too )
