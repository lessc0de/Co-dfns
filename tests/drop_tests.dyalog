﻿:Namespace drop

S←':Namespace' 'Run←{⍺↓⍵}' 'R2←{(1⌷⍺)↓⍵}' ':EndNamespace'
F←{⊃((⎕DR ⍵)645)⎕DR ⍵}

'01'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	1	(5 5⍴⍳5)
'02'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	3	(⍳10)
'03'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(5 7)	(⍳35)
'04'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'05'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(0 1 0 1 0 0)
'06'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	1	⍬
'07'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(3 10⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'08'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	5	(5 5⍴⍳5)
'09'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	6	(5 5⍴⍳5)
'10'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(5 5⍴⍳5)
'11'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯5	(5 5⍴⍳5)
'12'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯20	(5 5⍴⍳5)
'13'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯20	(⍳10)
'14'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯3	(⍳10)
'15'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	⍬
'16'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	1	(÷1+5 5⍴⍳5)
'17'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	3	(÷1+⍳10)
'18'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(5 7)	(÷1+⍳35)
'19'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	5	(÷1+5 5⍴⍳5)
'20'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	6	(÷1+5 5⍴⍳5)
'21'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(÷1+5 5⍴⍳5)
'22'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯5	(÷1+5 5⍴⍳5)
'23'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯20	(÷1+5 5⍴⍳5)
'24'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯20	(÷1+⍳10)
'25'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯3	(÷1+⍳10)
'26'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 1)	(5 5⍴⍳5)
'27'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 3)	(⍳10)
'28'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 5)	(⍳35)
'29'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 5)	(5 5⍴⍳5)
'30'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 6)	(5 5⍴⍳5)
'31'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯1)	(5 5⍴⍳5)
'32'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯5)	(5 5⍴⍳5)
'33'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯20)	(5 5⍴⍳5)
'34'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯20)	(⍳10)
'35'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯3)	(⍳10)
'36'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯1)	⍬
'37'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 1)	⍬
'38'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 1)	(÷1+5 5⍴⍳5)
'39'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 3)	(÷1+⍳10)
'40'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 5)	(÷1+⍳35)
'41'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 5)	(÷1+5 5⍴⍳5)
'42'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 6)	(÷1+5 5⍴⍳5)
'43'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯1)	(÷1+5 5⍴⍳5)
'44'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯5)	(÷1+5 5⍴⍳5)
'45'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯20)	(÷1+5 5⍴⍳5)
'46'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯20)	(÷1+⍳10)
'47'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯3)	(÷1+⍳10)
'48'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'49'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(0 1 0 1 0 0)
'50'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(3 10⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'51'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'52'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(100⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'53'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(3 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'54'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(30 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'55'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	7	(0 1 0 1 0 0)
'56'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	64	(64⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'57'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	64	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'58'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	64	(192⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'59'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	7	(70⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'60'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	7	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'61'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	7	(3 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'62'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	2	(4 32⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'63'('drop' S 'Run' #.util.GEN∆T2 ⎕THIS)	3	(4 32⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'64'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'65'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(0 1 0 1 0 0)
'66'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(3 10⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'67'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'68'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(100⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'69'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(3 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'70'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(30 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'71'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 7)	(0 1 0 1 0 0)
'72'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 64)	(64⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'73'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 64)	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'74'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 64)	(192⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'75'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 7)	(70⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'76'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 7)	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'77'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 7)	(3 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'78'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 2)	(4 32⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'79'('drop' S 'R2' #.util.GEN∆T2 ⎕THIS)	(F 7 3)	(4 32⍴0 1 0 1 0 0 1 1 1 1 0 0 0)

:EndNamespace
