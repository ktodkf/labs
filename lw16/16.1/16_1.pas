PROGRAM SortMonth(INPUT, OUTPUT);
USES 
  DateIO;
VAR
  Mo1, Mo2: Month;
BEGIN{SortMonth}
  ReadMonth(INPUT, Mo1);
  ReadMonth(INPUT, Mo2);
  IF (Mo1= NoMonth) OR (Mo2= NoMonth)
  THEN
    WRITELN('������ �����������')
  ELSE
    IF Mo1= Mo2
    THEN 
      WRITELN('������ �����')
    ELSE
      BEGIN
        WriteMonth(OUTPUT, Mo1);
        IF Mo1<Mo2
        THEN
          WRITE(' ������������ �� ')
        ELSE
          WRITE(' ������� �� ');
        WriteMonth(OUTPUT, Mo2);
        WRITELN
       END;
END.{SoGrtMonth}      
