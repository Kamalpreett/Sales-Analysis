---Cleansed DimProduct Table---
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as ProductItemCode 
  ---,[ProductSubcategoryKey]
  ---,[WeightUnitMeasureCode]
  ---,[SizeUnitMeasureCode]
  ,[EnglishProductName] as ProductName 
  ---,[SpanishProductName]
  ---,[FrenchProductName]
  ---,[StandardCost]
  ---,[FinishedGoodsFlag]
  ,p.[Color] as ProductColor 
  ---,[SafetyStockLevel]
  ---,[ReorderPoint]
  ---,[ListPrice]
  ,p.[Size] as ProductSize 
  ---,[SizeRange]
  ---,[Weight]
  ---,[DaysToManufacture]
  ,p.[ProductLine] 
  ---,[DealerPrice]
  --- ,[Class]
  ---,[Style]
  ,p.[ModelName] as ProductModelName 
  ---,[LargePhoto]
  ,p.[EnglishDescription] as ProductDescriptiion 
  ---,[FrenchDescription]
  ---,[ChineseDescription]
  ---,[ArabicDescription]
  ---,[HebrewDescription]
  ---,[ThaiDescription]
  ---,[GermanDescription]
  ---,[JapaneseDescription]
  ---,[TurkishDescription]
  ---,[StartDate]
  ---,[EndDate]
  ,ps.Englishproductsubcategoryname as SubCategory 
  ,pc.EnglishProductCategoryname as ProductCategory 
  ,ISNULL (p.[Status], 'OutDated') as ProductStatus 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[dimproductsubcategory] as ps on ps.productsubcategorykey = p.productsubcategorykey 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] as pc on pc.productcategorykey = ps.productcategorykey 
ORDER BY 
  p.ProductKey ASC
