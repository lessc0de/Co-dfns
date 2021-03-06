﻿:Namespace drop

S1←':Namespace' 'Run←{⍺↓⍵}' ':EndNamespace'
S2←':Namespace' 'Run←{(1⌷⍺)↓⍵}' ':EndNamespace'
S3←':Namespace' 'Run←{5↓⍵}' ':EndNamespace'
F←{⊃((⎕DR ⍵)645)⎕DR ⍵}
B←{⊃((⎕DR ⍵)11)⎕DR ⍵}

'001'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	1	(5 5⍴⍳5)
'002'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	3	(⍳10)
'003'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(5 7)	(⍳35)
'004'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'005'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(0 1 0 1 0 0)
'006'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	1	⍬
'007'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(3 10⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'008'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	5	(5 5⍴⍳5)
'009'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	6	(5 5⍴⍳5)
'010'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(5 5⍴⍳5)
'011'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯5	(5 5⍴⍳5)
'012'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯20	(5 5⍴⍳5)
'013'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯20	(⍳10)
'014'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯3	(⍳10)
'015'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	⍬
'016'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	1	(÷1+5 5⍴⍳5)
'017'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	3	(÷1+⍳10)
'018'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(5 7)	(÷1+⍳35)
'019'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	5	(÷1+5 5⍴⍳5)
'020'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	6	(÷1+5 5⍴⍳5)
'021'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯1	(÷1+5 5⍴⍳5)
'022'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯5	(÷1+5 5⍴⍳5)
'023'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯20	(÷1+5 5⍴⍳5)
'024'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯20	(÷1+⍳10)
'025'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯3	(÷1+⍳10)
'026'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 1)	(5 5⍴⍳5)
'027'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 3)	(⍳10)
'028'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 5)	(⍳35)
'029'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 5)	(5 5⍴⍳5)
'030'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 6)	(5 5⍴⍳5)
'031'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯1)	(5 5⍴⍳5)
'032'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯5)	(5 5⍴⍳5)
'033'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯20)	(5 5⍴⍳5)
'034'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯20)	(⍳10)
'035'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯3)	(⍳10)
'036'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯1)	⍬
'037'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 1)	⍬
'038'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 1)	(÷1+5 5⍴⍳5)
'039'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 3)	(÷1+⍳10)
'040'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 5)	(÷1+⍳35)
'041'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 5)	(÷1+5 5⍴⍳5)
'042'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 6)	(÷1+5 5⍴⍳5)
'043'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯1)	(÷1+5 5⍴⍳5)
'044'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯5)	(÷1+5 5⍴⍳5)
'045'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯20)	(÷1+5 5⍴⍳5)
'046'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯20)	(÷1+⍳10)
'047'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯3)	(÷1+⍳10)
'048'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'049'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(0 1 0 1 0 0)
'050'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(3 10⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'051'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'052'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(100⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'053'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(3 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'054'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	¯7	(30 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'055'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	7	(0 1 0 1 0 0)
'056'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	64	(64⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'057'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	64	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'058'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	64	(192⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'059'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	7	(70⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'060'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	7	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'061'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	7	(3 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'062'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	2	(4 32⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'063'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	3	(4 32⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'064'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'065'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(0 1 0 1 0 0)
'066'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(3 10⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'067'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'068'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(100⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'069'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(3 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'070'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 ¯7)	(30 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'071'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 7)	(0 1 0 1 0 0)
'072'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 64)	(64⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'073'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 64)	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'074'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 64)	(192⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'075'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 7)	(70⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'076'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 7)	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'077'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 7)	(3 30⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'078'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 2)	(4 32⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'079'('drop' S2 'Run' #.util.GEN∆T2 ⎕THIS)	(F 7 3)	(4 32⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'080'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 1)	(5 5⍴⍳5)
'081'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 1)	(⍳10)
'082'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 1)	(⍳35)
'083'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 0)	(⍳35)
'084'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 1)	⍬
'085'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 0)	⍬
'086'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 0)	(5 5⍴⍳5)
'087'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 0)	(⍳10)
'088'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 1)	(÷1+5 5⍴⍳5)
'089'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 1)	(÷1+⍳10)
'090'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 0)	(÷1+⍳35)
'091'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 0)	(÷1+5 5⍴⍳5)
'092'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 1)	(0 1 0 1 0 0 1 1 1 1 0 0 0)
'093'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 0)	(0 1 0 1 0 0)
'094'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 1)	(3 10⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'095'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(B 0)	(128⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'096'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(6 5⍴⍳5)
'097'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(⍳10)
'098'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(⍳35)
'099'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(0 1 0 1 0 0 1 1 1 1 0 0 0)
'100'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(0 1 0 1)
'101'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		⍬
'102'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(3 10⍴0 1 0 1 0 0 1 1 1 1 0 0 0)
'103'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(5 5⍴⍳5)
'104'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(3 5⍴⍳5)
'105'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(7 5⍴⍳5)
'106'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(8 5⍴⍳5)
'107'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(1 5⍴⍳5)
'108'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(÷1+6 5⍴⍳5)
'109'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(÷1+⍳10)
'110'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(÷1+⍳35)
'111'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(÷1+5 5⍴⍳5)
'112'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(÷1+3 5⍴⍳5)
'113'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(÷1+7 5⍴⍳5)
'114'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(÷1+8 5⍴⍳5)
'115'('drop' S3 'Run' #.util.GEN∆T1 ⎕THIS)		(÷1+1 5⍴⍳5)
'116'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(¯2 2)	(5 5 3⍴⍳75)
'117'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(25)	(⍳12)
'118'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(10 10)	(5 5⍴⍳25)
'119'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(10 10)	(5)
'120'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(10)	(5)
'121'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(2 5 5)	(3 3 3⍴⍳27)
'122'('drop' S1 'Run' #.util.GEN∆T2 ⎕THIS)	(2 ¯5 5)	(3 3 3⍴⍳27)

:EndNamespace
