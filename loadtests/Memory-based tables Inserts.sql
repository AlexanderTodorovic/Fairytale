DECLARE 
      @i int = 0, 
      @fairytale nvarchar(max) = 'What a look of surprise shone on Mastro Cherry’s face! His funny face became still funnier.'; 

WHILE (@i < 20) 
BEGIN; 
      EXEC dbo.InsertFairytale_inmem  @fairytale; 
      SET @i += 1 
END
