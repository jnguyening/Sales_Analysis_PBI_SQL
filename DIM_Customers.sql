-- Cleansed DIM_Customers Table -- 
SELECT 
  c.CustomerKey AS CustomerKey, 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  c.FirstName AS [First Name], 
  --[MiddleName], 
  c.LastName AS [Last Name],
  c.FirstName + ' ' + LastName AS [Full Name], -- combined first and last name
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE c.Gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  c.DateFirstPurchase AS DateFirstPurchase, 
  --[CommuteDistance] 
  g.City AS [Customer City] -- Joined in Customer City from Geography Table,
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered list by CustomerKey
