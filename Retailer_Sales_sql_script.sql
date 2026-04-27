SELECT 
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(Birthday, '%m/%d/%Y'), CURDATE()) < 30 THEN 'Young (Under 30)'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(Birthday, '%m/%d/%Y'), CURDATE()) BETWEEN 30 AND 55 THEN 'Adults (30-55)'
        ELSE 'Seniors (Over 55)'
    END AS Age_Group,
    COUNT(CustomerKey) AS Total_Customers,
    ROUND(SUM(Total_Revenue_USD), 2) AS Revenue_by_Age
FROM 
    final_data
GROUP BY Age_Group
ORDER BY Revenue_by_Age DESC;
  
SELECT 
    CASE
        WHEN Total_Revenue_USD < 500 THEN 'Low Value (< $500)'
        WHEN Total_Revenue_USD BETWEEN 500 AND 2000 THEN 'Mid Value ($500 - $2k)'
        ELSE 'High Value (> $2k)'
    END AS Sales_Tier,
    COUNT(Order_Number) AS Orders_Count,
    ROUND(SUM(Total_Revenue_USD), 2) AS Total_Segment_Revenue
FROM
    final_data
GROUP BY Sales_Tier
ORDER BY Total_Segment_Revenue DESC;

SELECT 
    DATE_FORMAT(STR_TO_DATE(Order_Date, '%m/%d/%Y'),'%Y-%m') AS Sales_Month,
    COUNT(Order_Number) AS Total_Orders,
    ROUND(SUM(Total_Revenue_USD), 2) AS Monthly_Revenue,
    ROUND(SUM(Profit_USD), 2) AS Monthly_Profit
FROM
    final_data
GROUP BY Sales_Month
ORDER BY Sales_Month ASC;

SELECT 
    Category,
    ROUND(SUM(Total_Revenue_USD), 2) AS Sales,
    ROUND((SUM(Profit_USD) / SUM(Total_Revenue_USD)) * 100, 2) AS Profit_Margin_Percentage
FROM final_data
GROUP BY Category
ORDER BY Sales DESC;

SELECT 
    CustomerKey,
    Name,
    Country,
    COUNT(Order_Number) AS Total_Orders,
    ROUND(SUM(Total_Revenue_USD), 2) AS Total_Spent,
    ROUND(AVG(Total_Revenue_USD), 2) AS Average_Order_Value
FROM final_data
GROUP BY CustomerKey, Name, Country
ORDER BY Total_Spent DESC
LIMIT 10;