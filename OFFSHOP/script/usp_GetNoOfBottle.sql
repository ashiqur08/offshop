alter procedure usp_GetNoOfBottle
@pCaseId int
as
begin
	select CaseId,SizeOfBottle,NoOfBottlePerCase from BottlePerCase where CaseId = @pCaseId
end


--exec usp_GetNoOfBottle 1