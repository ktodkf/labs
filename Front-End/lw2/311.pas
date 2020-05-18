
PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  Result: STRING;
BEGIN{SarahRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Result := GetEnv('QUERY_STRING');
  IF Result = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land');
  IF Result = 'lanterns=2'
  THEN
    WRITELN('The British are coming by sea');
END.{SarahRevere}
