alter procedure usp_GetAllSizeOfBottle
as
	begin
		select CaseId,Type,SizeOfBottle from BottlePerCase
	end