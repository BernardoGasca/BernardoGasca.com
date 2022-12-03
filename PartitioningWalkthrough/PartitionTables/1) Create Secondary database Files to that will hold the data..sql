
--2019
-----------------------------
-- BernardoGasca.com
-- BernardoGasca@outlook.com
--
------- Create File Group that will house secondary files ----------

Create Database [AdventureWorks2019] 
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_012013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_022013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_032013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_042013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_052013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_062013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_072013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_082013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_092013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_102013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_112013
ALTER DATABASE  [AdventureWorks2019] Add FILEGROUP AdventureWorks_Transactions_122013

-------- Create Secondary Database Files --------------------------- 

ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_012013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_012013.ndf' , 
           SIZE = 5000KB ,  FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_012013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_022013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_022013.ndf' , 
           SIZE = 5000KB , FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_022013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_032013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_032013.ndf' , 
           SIZE = 5000KB , FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_032013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_042013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_042013.ndf' , 
           SIZE = 5000KB , FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_042013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_052013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_052013.ndf' , 
           SIZE = 5000KB ,FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_052013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_062013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_062013.ndf' , 
           SIZE = 5000KB ,FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_062013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_072013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_072013.ndf' , 
           SIZE = 5000KB ,FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_072013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_082013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_082013.ndf' , 
           SIZE = 5000KB , FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_082013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_092013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_092013.ndf' , 
           SIZE = 5000KB ,FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_092013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_102013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_102013.ndf' , 
           SIZE = 5000KB , FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_102013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_112013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_112013.ndf' , 
           SIZE = 5000KB , FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_112013
 
ALTER DATABASE [AdventureWorks2019]  
ADD FILE ( NAME = N'AdventureWorks_Transactions_122013',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEUSQL\MSSQL\DATA\AdventureWorks_Transactions_122013.ndf' , 
           SIZE = 5000KB , FILEGROWTH = 1024KB ) 
TO FILEGROUP AdventureWorks_Transactions_122013
 
 

  