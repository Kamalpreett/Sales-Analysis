---Cleansed DimCustomer Table---
SELECT 
  c.CustomerKey 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  ,c.FirstName 
  --,[MiddleName]
  ,c.LastName -- ,[NameStyle]
  ,c.FirstName+' '+ c.LastName as FullName
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  ,c.DateFirstPurchase --,[CommuteDistance]
  ,g.city as CustomerCity ---Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  LEFT JOIN AdventureWorksDW2019.[dbo].[DimGeography] as g 
   on g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC --- Ordered List by Customer Key
