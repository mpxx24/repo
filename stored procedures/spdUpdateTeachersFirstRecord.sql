USE [DatabaseProgramming2]
GO
/****** Object:  StoredProcedure [dbo].[spdUpdateTearchesFirstRecord]    Script Date: 27.01.2016 18:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spdUpdateTearchesFirstRecord]
	@valueToEnter nvarchar(10)
as
begin
	update Teachers set teacherFirstName = @valueToEnter where teacherID=1
	
	set @valueToEnter = (select top 1 teacherFirstName from Teachers where teacherID = 1)
end
