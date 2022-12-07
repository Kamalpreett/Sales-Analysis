---Cleansed FactInternetSales Table---
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey] 
  ---,[PromotionKey]
  ---,[CurrencyKey]
  ---,[SalesTerritoryKey]
  ,[SalesOrderNumber] 
  ---,[SalesOrderLineNumber]
  ---,[RevisionNumber]
  ---,[OrderQuantity]
  ---,[UnitPrice]
  ---,[ExtendedAmount]
  ---,[UnitPriceDiscountPct]
  ---,[DiscountAmount]
  ---,[ProductStandardCost]
  ---,[TotalProductCost]
  ,[SalesAmount] 
  ---,[TaxAmt]
  ---,[Freight]
  ---,[CarrierTrackingNumber]
  ---,[CustomerPONumber]
  ---,[OrderDate]
  ---,[DueDate]
  ---,[ShipDate]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  LEFT(OrderDateKey, 4) >= 2019 and LEFT(OrderDateKey,4) <2021 ---Ensures we always only bring two years of date from extraction
ORDER BY 
  OrderDateKey ASC
