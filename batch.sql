create assembly CLR_Function from 'c:\Users\mattp\Desktop\CLR.dll'
with permission_set = safe
go

Create Function BuildUserName(@firstName nvarchar(max), @lastName nvarchar(max))
returns Table (
	Results nvarchar(max)
)
As
external name CLR_Function.[CLR_Function.UserDefinedFunctions].BuildUserName
Go