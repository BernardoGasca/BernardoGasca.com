 

use AdventureWorks2019
 

create partition function fn_Month_Range(date)
as range left
for values( '20130131', '20130228',	'20130331','20130430','20130531','20130630','20130731','20130831','20130930','20131031','20131130' )
go

use AdventureWorks2019
create partition scheme SCH_Transaction_Date
as partition   fn_Month_Range
to (
--2013 
AdventureWorks_Transactions_012013,
AdventureWorks_Transactions_022013,
AdventureWorks_Transactions_032013,
AdventureWorks_Transactions_042013,
AdventureWorks_Transactions_052013,
AdventureWorks_Transactions_062013,
AdventureWorks_Transactions_072013,
AdventureWorks_Transactions_082013,
AdventureWorks_Transactions_092013,
AdventureWorks_Transactions_102013,
AdventureWorks_Transactions_112013,
AdventureWorks_Transactions_122013
)
  