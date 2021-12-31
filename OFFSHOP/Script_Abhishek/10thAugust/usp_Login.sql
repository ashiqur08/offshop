alter procedure usp_Login
@pUid varchar(50),
@pPwd varchar(50),
@pHotelId int
as
begin
	select * from EmployeeMaster where FirstName = @pUid and Pwd = @pPwd and HotelId = @pHotelId
end
-- exec usp_Login 'Abhishek','goldenword',0