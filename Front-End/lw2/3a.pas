
PROGRAM Mame(INPUT, OUTPUT);
USES
  DOS;
VAR
  name: string;
BEGIN
  WRITELN('Contenet-Type: text/plain');
  WRITELN;
  name := GetEnv('QUERY_STRING');
  IF name <> ''
  THEN
    WRITELN('Hello dear  ', name, '!')
  ELSE
    IF name = ''
    THEN
      WRITELN('Hello Anonymous!');
END.
