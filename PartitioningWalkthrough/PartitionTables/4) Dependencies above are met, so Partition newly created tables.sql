 

--Delete Existing clusted key
ALTER TABLE Landing.Transactions  DROP CONSTRAINT PK_Transactions_OrderID_Landing WITH ( ONLINE = OFF )

--Recreate Clusted Key pointing at the partition scheme 
ALTER TABLE Landing.Transactions 
ADD  CONSTRAINT PK_Transactions_OrderID_Landing PRIMARY KEY CLUSTERED 
( OrderID  ,OrderDate)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = on, IGNORE_DUP_KEY = OFF, ONLINE = OFF, 
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) 
ON SCH_Transaction_Date(OrderDate) --   <- Partition Scheme is referenced. 
GO



--Delete Existing clusted key
ALTER TABLE Persist.Transactions  DROP CONSTRAINT [PK_Transactions_OrderID_Persist] WITH ( ONLINE = OFF ) 

--Recreate Clusted Key pointing at the partition scheme 
ALTER TABLE Persist.Transactions 
ADD  CONSTRAINT [PK_Transactions_OrderID_Persist] PRIMARY KEY CLUSTERED 
( OrderID  ,OrderDate)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = on, IGNORE_DUP_KEY = OFF, ONLINE = OFF, 
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) 
ON SCH_Transaction_Date(OrderDate) --   <- Partition Scheme is referenced.
GO

 
  
