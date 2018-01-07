DECLARE 
	  @i int = 0, 
      @fairytale nvarchar(MAX) = 'Im Städtlein Jüterbog hat einmal ein Schmied gelebt, von dem erzählen sich Kinder und Alte ein wundersames Märlein.'; 

WHILE (@i < 20) 
BEGIN; 
      EXEC dbo.InsertFairytale_ondisk @fairytale; 
      SET @i += 1 
END
