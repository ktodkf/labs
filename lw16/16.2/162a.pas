PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;  
BEGIN {SarahRevere}   
  {Инициализация}
   W2:=' ';                                                                           
   W3:=' ';                                                                           
   W4:=' ';                                                                                                                                              
   Looking:= TRUE;
   Sea:= FALSE;
   Land:= FALSE;
   WHILE Looking AND NOT (Land OR Sea)   
   DO
     BEGIN
      {Движение окна}
       BEGIN
         W1:= W2;
         W2:= W3;
         W3:= W4;
         READ(W4);
         Looking:= (W4 <> '#')
       END;
       {Проверка окна на land}        
       Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd'); 
     END;  
     IF Land 
     THEN
       WRITELN('Land')
     ELSE 
       WRITELN('SARAH DID NOT SAY')   
END.{SARAHREVERE}

