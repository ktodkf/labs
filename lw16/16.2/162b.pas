PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;  
BEGIN {SarahRevere}   
  {�������������}
   W2:=' ';                                                                           
   W3:=' ';                                                                           
   W4:=' ';                                                                                                                                              
   Looking:= TRUE;
   Sea:= FALSE;
   Land:= FALSE;
   WHILE Looking AND NOT (Land OR Sea)   
   DO
     BEGIN
      {�������� ����}
       BEGIN
         W1:= W2;
         W2:= W3;
         W3:= W4;
         READ(W4);
         Looking:= (W4 <> '#')
       END;
       {�������� ���� �� land}        
       Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd'); 
       Sea := (W1 = 's') AND (W2 = 'e') AND (W3 = 'a');
     END;  
     IF Land 
     THEN
       WRITELN('Land')
     ELSE 
       IF Sea
       THEN 
         WRITELN('Sea')
       ELSE  
         WRITELN('SARAH DID NOT SAY')   
END.{SARAHREVERE}

