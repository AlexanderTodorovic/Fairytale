USE [fairytale]
GO
/****** Object:  StoredProcedure [dbo].[InsertFairytale_ondisk]    Script Date: 1/8/2018 5:53:15 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertFairytale_ondisk]
GO
/****** Object:  StoredProcedure [dbo].[InsertFairytale_inmem]    Script Date: 1/8/2018 5:53:15 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertFairytale_inmem]
GO
/****** Object:  StoredProcedure [dbo].[InsertFairytale_inmem]    Script Date: 1/8/2018 5:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertFairytale_inmem] 	@fairytale nvarchar(max)
WITH NATIVE_COMPILATION, SCHEMABINDING
AS
BEGIN ATOMIC WITH
  (TRANSACTION ISOLATION LEVEL = SNAPSHOT,
   LANGUAGE = N'us_english')

	INSERT INTO [dbo].[FairyTalesmem]
           ([Fairytale])
	VALUES
	(	
		@fairytale
	)

END
GO
/****** Object:  StoredProcedure [dbo].[InsertFairytale_ondisk]    Script Date: 1/8/2018 5:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertFairytale_ondisk]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InsertFairytale_ondisk] AS' 
END
GO

ALTER PROCEDURE [dbo].[InsertFairytale_ondisk]
	@fairytale nvarchar(max)
AS
BEGIN 
	BEGIN TRAN
	
		INSERT INTO [dbo].[FairyTales]
           ([Fairytale])
		VALUES
           (@fairytale)

	COMMIT
END
GO
