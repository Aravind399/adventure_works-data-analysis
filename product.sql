SELECT [ProductKey]
      ,[ProductAlternateKey] as ItemCode
      ,p.[ProductSubcategoryKey] as SubCategory
     -- ,[WeightUnitMeasureCode]
    --  ,[SizeUnitMeasureCode]
      ,[EnglishProductName] as ProductName
	  ,s.EnglishProductSubcategoryName as SubCategoryName
	  ,a.EnglishProductCategoryName as CategoryName
    --  ,[SpanishProductName]
    --  ,[FrenchProductName]
    --  ,[StandardCost]
     -- ,[FinishedGoodsFlag]
     ,[Color] as ProductColor
     -- ,[SafetyStockLevel]
      --,[ReorderPoint]
      ,[ListPrice]
     ,[Size]
     -- ,[SizeRange]
     -- ,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      ,[Class]
    --  ,[Style]
     ,[ModelName]
    --  ,[LargePhoto]
    --  ,[EnglishDescription]
     -- ,[FrenchDescription]
      --,[ChineseDescription]
     -- ,[ArabicDescription]
    --  ,[HebrewDescription]
     -- ,[ThaiDescription]
     -- ,[GermanDescription]
    --  ,[JapaneseDescription]
    --  ,[TurkishDescription]
      --,[StartDate]
     -- ,[EndDate]
      ,[Status]
	  ,ISNULL(p.status,'outdated') as Current_status
FROM [AdventureWorksDW2022].[dbo].[DimProduct] p
left join 
[dbo].[DimProductSubcategory] s on p.ProductSubcategoryKey = s.ProductSubcategoryKey
left join [dbo].[DimProductCategory] a 
on s.ProductCategoryKey=a.ProductCategoryKey

