---Cleansed DimDate Table---
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date 
  --,[DayNumberOfWeek]
  ,[EnglishDayNameOfWeek] as day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] as WeekNr, 
  [EnglishMonthName] as Month 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  ,[MonthNumberOfYear] as MonthNo 
  ,[CalendarQuarter] as Quarter 
  ,[CalendarYear] as Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
  ,LEFT(EnglishMonthName, 3) as MonthShort
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2019 and CalendarYear <2021
