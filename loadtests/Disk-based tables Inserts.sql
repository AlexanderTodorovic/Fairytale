DECLARE 
	  @i int = 0, 
      @fairytale nvarchar(MAX) = 'Im St�dtlein J�terbog hat einmal ein Schmied gelebt, von dem erz�hlen sich Kinder und Alte ein wundersames M�rlein.'; 

WHILE (@i < 20) 
BEGIN; 
      EXEC dbo.InsertFairytale_ondisk @fairytale; 
      SET @i += 1 
END
