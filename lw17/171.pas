PROGRAM SumDigit(INPUT, OUTPUT);
VAR
  Sum, Digit: INTEGER;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR
  Ch: char;
BEGIN  {ReadDigit}
  IF NOT EOLN 
  THEN 
    BEGIN 
      READ( F, Ch);
      IF (Ch>= '0')AND (Ch<='9')
      THEN
        BEGIN
          IF Ch = '0' THEN D:=0 ELSE
          IF Ch = '1' THEN D:=1 ELSE
          IF Ch = '2' THEN D:=2 ELSE
          IF Ch = '3' THEN D:=3 ELSE
          IF Ch = '4' THEN D:=4 ELSE
          IF Ch = '5' THEN D:=5 ELSE
          IF Ch = '6' THEN D:=6 ELSE
          IF Ch = '7' THEN D:=7 ELSE
          IF Ch = '8' THEN D:=8 ELSE
          IF Ch = '9' THEN D:=9 
        END
      ELSE D:= -1
    END
END;{ReadDigit}

BEGIN {SumDigit}
  Sum:=0;
  WHILE (NOT EOLN) AND (Digit <> -1) 
  DO
    BEGIN  
      ReadDigit(INPUT, Digit);
      IF Dig <> -1 
      THEN     
        Sum:= Sum + Dig 
    END;
  WRITELN(OUTPUT, Sum)
END. {SumDigit}
