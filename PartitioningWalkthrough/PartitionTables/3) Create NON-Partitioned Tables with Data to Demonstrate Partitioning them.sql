

   
			  CREATE SCHEMA Landing
			  go
			  CREATE SCHEMA Persist
			  go
			  -- Create Demo Tables: Landing
			  create table Landing.Transactions
			  (
				   OrderID int identity(1,1) not null,
				   OrderDate date not null,
				   shipdate date,
				   Account varchar(25),
				   Status int,
				   Amount decimal(20,2) ,
				   CONSTRAINT [PK_Transactions_OrderID_Landing]
			  PRIMARY KEY CLUSTERED ( [OrderID] ASC  )
			  WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
			  ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
			  ON [PRIMARY] ) ON [PRIMARY]
 
			  -- Create Demo Tables: Persist
			  create table Persist.Transactions
			 (      OrderID int identity(1,1) not null,
					OrderDate date not null,
					shipdate date,
					Account varchar(25),
					Status int,
					Amount decimal(20,2) ,
					CONSTRAINT [PK_Transactions_OrderID_Persist] 
			  PRIMARY KEY CLUSTERED  ( [OrderID] ASC ) 
			  WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
			        ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) 
			  ON [PRIMARY] ) ON [PRIMARY]
  
				set Identity_Insert Landing.Transactions on
				--Insert data into the landing table: 
				insert Landing.Transactions (OrderID,OrderDate,shipdate,Account,Status,Amount)  
				values  
				('49181','2013-01-01 00:00:00','2013-01-13 00:00:00','10-4030-017891','5','2181.56'),
				('49182','2013-02-01 00:00:00','2013-02-13 00:00:00','10-4030-017892','5','2182.56'),
				('49183','2013-03-01 00:00:00','2013-03-13 00:00:00','10-4030-017893','5','2183.56'),
				('49184','2013-04-01 00:00:00','2013-04-13 00:00:00','10-4030-017894','5','2184.56'),
				('49185','2013-05-01 00:00:00','2013-05-13 00:00:00','10-4030-017895','5','2185.56'),
				('49186','2013-06-01 00:00:00','2013-06-13 00:00:00','10-4030-017896','5','2186.56'),
				('49187','2013-07-01 00:00:00','2013-07-13 00:00:00','10-4030-017897','5','2187.56'),
				('49188','2013-08-01 00:00:00','2013-08-13 00:00:00','10-4030-017898','5','2188.56'),
				('49189','2013-09-01 00:00:00','2013-09-13 00:00:00','10-4030-017899','5','2189.56'),
				('49190','2013-10-01 00:00:00','2013-10-13 00:00:00','10-4030-017810','5','2190.56'),
				('49191','2013-11-01 00:00:00','2013-11-13 00:00:00','10-4030-017811','5','2191.56'),
				('49192','2013-12-01 00:00:00','2013-12-13 00:00:00','10-4030-017812','5','2192.56')
				 


