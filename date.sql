SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date
  --,[DayNumberOfWeek]
  ,[EnglishDayNameOfWeek] as Day --  ,[SpanishDayNameOfWeek]
  --  ,[FrenchDayNameOfWeek]
  --  ,[DayNumberOfMonth]
  --  ,[DayNumberOfYear]
  --   ,[WeekNumberOfYear]
  ,[EnglishMonthName] as Month --   ,[SpanishMonthName]
  ,left([EnglishMonthName],3) as MonthSt
  --   ,[FrenchMonthName]
  --   ,[MonthNumberOfYear]
  ,[CalendarQuarter] as Quarter, 
  [CalendarYear] as Year
  --  ,[CalendarSemester]
  --  ,[FiscalQuarter]
  --  ,[FiscalYear]
  --  ,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
