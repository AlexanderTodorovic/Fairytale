DECLARE 
	  @i int = 0, 
      @fairytale nvarchar(MAX) = 'Gentlemen looked at each other questioningly, and then spoke again on indifferent matters, but only with half of their minds.'; 

WHILE (@i < 20) 
BEGIN; 
      EXEC dbo.InsertFairytale_ondisk @fairytale; 
      SET @i += 1 
END
