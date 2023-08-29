SELECT [CustomerKey]
    --  ,[GeographyKey]
    --  ,[CustomerAlternateKey]
   --   ,[Title]
      ,[FirstName] + ' ' + [LastName] as Name
      --,[MiddleName]
    --  ,[NameStyle]
      ,[BirthDate]
	  ,DATEDIFF(YY,BirthDate,GETDATE()) as Current_age
      ,case [MaritalStatus] when 'M' then 'Married' when 'S' then 'Single' end as MaritalStatus
    --  ,[Suffix]
      ,case [Gender] when 'M' then 'Male' when 'F' then 'Female' end as Gender 
      ,[EmailAddress]
      ,[YearlyIncome]
    --  ,[TotalChildren]
   --   ,[NumberChildrenAtHome]
    --  ,[EnglishEducation]
    --  ,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
      --,[FrenchOccupation]
  --    ,[HouseOwnerFlag]
    --  ,[NumberCarsOwned]
    --  ,[AddressLine1]
     --- ,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,g.City
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] a
  left join [dbo].[DimGeography] g
  on 
  a.GeographyKey=g.GeographyKey
