create procedure [dbo].spdInsertTeachersTestData
	@valueToEnter nvarchar(10)
as
begin
	insert into Teachers(teacherFirstName, teacherLastName)
	values(@valueToEnter, @valueToEnter)
end
