�	
�C:\Users\irosales\source\repos\Test.NetCore\ApiServices\TodoListService\ClaseQueNoHaceNadaSirveParaVerificarQueSonarQubeFuncioneDetectandoEsteNombreMalo.cs
	namespace 	
TodoListService
 
{ 
public 

class \
PClaseQueNoHaceNadaSirveParaVerificarQueSonarQubeFuncioneDetectandoEsteNombreMalo a
{ 
public \
PClaseQueNoHaceNadaSirveParaVerificarQueSonarQubeFuncioneDetectandoEsteNombreMalo _
(_ `
)` a
{ 	
Valor 
= 
$num 
; 
} 	
public 
int 
Valor 
{ 
get 
; 
set  #
;# $
}% &
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 
System 
. 
String  
.  !
Format! '
(' (
$"( *)
Clase mala tiene el valor de * G
{G H
ValorH M
}M N
"N O
)O P
;P Q
} 	
} 
} �
RC:\Users\irosales\source\repos\Test.NetCore\ApiServices\TodoListService\Program.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str /
)/ 0
]0 1
	namespace 	
TodoListService
 
{		 
internal

 
static

 
class

 
Program

 !
{ 
[ 	
	DllImport	 
( 
$str "
," #
CharSet$ +
=, -
CharSet. 5
.5 6
Unicode6 =
)= >
]> ?
public 
static 
extern 
void !
funcMalEscrita" 0
(0 1
IntPtr1 7
pointer8 ?
)? @
;@ A
public 
static 
void 
Main 
(  
)  !
{ 	
try 
{ 
IntPtr 
p 
= 
IntPtr !
.! "
Zero" &
;& '
funcMalEscrita 
( 
p  
)  !
;! "
ServiceRuntime 
.  
RegisterServiceAsync 3
(3 4
$str4 I
,I J
context 
=> 
new "
TodoListService# 2
(2 3
context3 :
): ;
); <
.< =

GetAwaiter= G
(G H
)H I
.I J
	GetResultJ S
(S T
)T U
;U V
ServiceEventSource   "
.  " #
Current  # *
.  * +!
ServiceTypeRegistered  + @
(  @ A
Process  A H
.  H I
GetCurrentProcess  I Z
(  Z [
)  [ \
.  \ ]
Id  ] _
,  _ `
typeof  a g
(  g h
TodoListService  h w
)  w x
.  x y
Name  y }
)  } ~
;  ~ 
Thread## 
.## 
Sleep## 
(## 
Timeout## $
.##$ %
Infinite##% -
)##- .
;##. /
}$$ 
catch%% 
(%% 
	Exception%% 
e%% 
)%% 
{&& 
ServiceEventSource'' "
.''" #
Current''# *
.''* ++
ServiceHostInitializationFailed''+ J
(''J K
e''K L
.''L M
ToString''M U
(''U V
)''V W
)''W X
;''X Y
throw(( 
;(( 
})) 
}** 	
}++ 
},, �T
]C:\Users\irosales\source\repos\Test.NetCore\ApiServices\TodoListService\ServiceEventSource.cs
	namespace 	
TodoListService
 
{ 
[ 
EventSource 
( 
Name 
= 
$str @
)@ A
]A B
internal		 
sealed		 
class		 
ServiceEventSource		 ,
:		- .
EventSource		/ :
{

 
[ 	
	DllImport	 
( 
$str "
," #
CharSet$ +
=, -
CharSet. 5
.5 6
Unicode6 =
)= >
]> ?
public 
static 
extern 
void !
funcMalEscrita" 0
(0 1
IntPtr1 7
pointer8 ?
)? @
;@ A
public 
static 
readonly 
ServiceEventSource 1
Current2 9
=: ;
new< ?
ServiceEventSource@ R
(R S
)S T
;T U
private 
ServiceEventSource "
(" #
)# $
:% &
base' +
(+ ,
), -
{. /
}0 1
public 
static 
class 
Keywords $
{ 	
public 
const 
EventKeywords &
Requests' /
=0 1
(2 3
EventKeywords3 @
)@ A
$numA E
;E F
public 
const 
EventKeywords &!
ServiceInitialization' <
== >
(? @
EventKeywords@ M
)M N
$numN R
;R S
} 	
private(( 
const(( 
int(( 
MessageEventId(( (
=(() *
$num((+ ,
;((, -
[** 	
NonEvent**	 
]** 
public++ 
void++ 
Message++ 
(++ 
string++ "
message++# *
,++* +
params++, 2
object++3 9
[++9 :
]++: ;
args++< @
)++@ A
{,, 	
if-- 
(-- 
this-- 
.-- 
	IsEnabled-- 
(-- 
)--  
)--  !
{.. 
string// 
finalMessage// #
=//$ %
string//& ,
.//, -
Format//- 3
(//3 4
message//4 ;
,//; <
args//= A
)//A B
;//B C
Message00 
(00 
finalMessage00 $
)00$ %
;00% &
}11 
}22 	
[44 	
Event44	 
(44 
MessageEventId44 
,44 
Level44 $
=44% &

EventLevel44' 1
.441 2
Informational442 ?
,44? @
Message44A H
=44I J
$str44K P
)44P Q
]44Q R
public55 
void55 
Message55 
(55 
string55 "
message55# *
)55* +
{66 	
if77 
(77 
this77 
.77 
	IsEnabled77 
(77 
)77  
)77  !
{88 

WriteEvent99 
(99 
MessageEventId99 )
,99) *
message99+ 2
)992 3
;993 4
}:: 
};; 	
[== 	
NonEvent==	 
]== 
public>> 
void>> 
ServiceMessage>> "
(>>" #"
StatefulServiceContext>># 9
serviceContext>>: H
,>>H I
string>>J P
message>>Q X
,>>X Y
params>>Z `
object>>a g
[>>g h
]>>h i
args>>j n
)>>n o
{?? 	
if@@ 
(@@ 
this@@ 
.@@ 
	IsEnabled@@ 
(@@ 
)@@  
)@@  !
{AA 
stringBB 
finalMessageBB #
=BB$ %
stringBB& ,
.BB, -
FormatBB- 3
(BB3 4
messageBB4 ;
,BB; <
argsBB= A
)BBA B
;BBB C
ServiceMessageCC 
(CC 
serviceContextDD "
.DD" #
ServiceNameDD# .
.DD. /
ToStringDD/ 7
(DD7 8
)DD8 9
,DD9 :
serviceContextEE "
.EE" #
ServiceTypeNameEE# 2
,EE2 3
serviceContextFF "
.FF" #
	ReplicaIdFF# ,
,FF, -
serviceContextGG "
.GG" #
PartitionIdGG# .
,GG. /
serviceContextHH "
.HH" #(
CodePackageActivationContextHH# ?
.HH? @
ApplicationNameHH@ O
,HHO P
serviceContextII "
.II" #(
CodePackageActivationContextII# ?
.II? @
ApplicationTypeNameII@ S
,IIS T
serviceContextJJ "
.JJ" #
NodeContextJJ# .
.JJ. /
NodeNameJJ/ 7
,JJ7 8
finalMessageKK  
)KK  !
;KK! "
}LL 
}MM 	
privateRR 
constRR 
intRR !
ServiceMessageEventIdRR /
=RR0 1
$numRR2 3
;RR3 4
[SS 	
EventSS	 
(SS !
ServiceMessageEventIdSS $
,SS$ %
LevelSS& +
=SS, -

EventLevelSS. 8
.SS8 9
InformationalSS9 F
,SSF G
MessageSSH O
=SSP Q
$strSSR W
)SSW X
]SSX Y
privateTT 
voidYY 
ServiceMessageYY 
(YY 
stringZZ 
serviceNameZZ 
,ZZ 
string[[ 
serviceTypeName[[ "
,[[" #
long\\ 
replicaOrInstanceId\\ $
,\\$ %
Guid]] 
partitionId]] 
,]] 
string^^ 
applicationName^^ "
,^^" #
string__ 
applicationTypeName__ &
,__& '
string`` 
nodeName`` 
,`` 
stringaa 
messageaa 
)aa 
{cc 	

WriteEventee 
(ee !
ServiceMessageEventIdee ,
,ee, -
serviceNameee. 9
,ee9 :
serviceTypeNameee; J
,eeJ K
replicaOrInstanceIdeeL _
,ee_ `
partitionIdeea l
,eel m
applicationNameeen }
,ee} ~ 
applicationTypeName	ee �
,
ee� �
nodeName
ee� �
,
ee� �
message
ee� �
)
ee� �
;
ee� �
}ww 	
privateyy 
constyy 
intyy (
ServiceTypeRegisteredEventIdyy 6
=yy7 8
$numyy9 :
;yy: ;
[zz 	
Eventzz	 
(zz (
ServiceTypeRegisteredEventIdzz +
,zz+ ,
Levelzz- 2
=zz3 4

EventLevelzz5 ?
.zz? @
Informationalzz@ M
,zzM N
MessagezzO V
=zzW X
$str	zzY �
,
zz� �
Keywords
zz� �
=
zz� �
Keywords
zz� �
.
zz� �#
ServiceInitialization
zz� �
)
zz� �
]
zz� �
public{{ 
void{{ !
ServiceTypeRegistered{{ )
({{) *
int{{* -
hostProcessId{{. ;
,{{; <
string{{= C
serviceType{{D O
){{O P
{|| 	

WriteEvent}} 
(}} (
ServiceTypeRegisteredEventId}} 3
,}}3 4
hostProcessId}}5 B
,}}B C
serviceType}}D O
)}}O P
;}}P Q
}~~ 	
private
�� 
const
�� 
int
�� 4
&ServiceHostInitializationFailedEventId
�� @
=
��A B
$num
��C D
;
��D E
[
�� 	
Event
��	 
(
�� 4
&ServiceHostInitializationFailedEventId
�� 5
,
��5 6
Level
��7 <
=
��= >

EventLevel
��? I
.
��I J
Error
��J O
,
��O P
Message
��Q X
=
��Y Z
$str
��[ 
,�� �
Keywords��� �
=��� �
Keywords��� �
.��� �%
ServiceInitialization��� �
)��� �
]��� �
public
�� 
void
�� -
ServiceHostInitializationFailed
�� 3
(
��3 4
string
��4 :
	exception
��; D
)
��D E
{
�� 	

WriteEvent
�� 
(
�� 4
&ServiceHostInitializationFailedEventId
�� =
,
��= >
	exception
��? H
)
��H I
;
��I J
}
�� 	
private
�� 
const
�� 
int
�� (
ServiceRequestStartEventId
�� 4
=
��5 6
$num
��7 8
;
��8 9
[
�� 	
Event
��	 
(
�� (
ServiceRequestStartEventId
�� )
,
��) *
Level
��+ 0
=
��1 2

EventLevel
��3 =
.
��= >
Informational
��> K
,
��K L
Message
��M T
=
��U V
$str
��W v
,
��v w
Keywords��x �
=��� �
Keywords��� �
.��� �
Requests��� �
)��� �
]��� �
public
�� 
void
�� !
ServiceRequestStart
�� '
(
��' (
string
��( .
requestTypeName
��/ >
)
��> ?
{
�� 	

WriteEvent
�� 
(
�� (
ServiceRequestStartEventId
�� 1
,
��1 2
requestTypeName
��3 B
)
��B C
;
��C D
}
�� 	
private
�� 
const
�� 
int
�� '
ServiceRequestStopEventId
�� 3
=
��4 5
$num
��6 7
;
��7 8
[
�� 	
Event
��	 
(
�� '
ServiceRequestStopEventId
�� (
,
��( )
Level
��* /
=
��0 1

EventLevel
��2 <
.
��< =
Informational
��= J
,
��J K
Message
��L S
=
��T U
$str
��V v
,
��v w
Keywords��x �
=��� �
Keywords��� �
.��� �
Requests��� �
)��� �
]��� �
public
�� 
void
��  
ServiceRequestStop
�� &
(
��& '
string
��' -
requestTypeName
��. =
,
��= >
string
��? E
	exception
��F O
=
��P Q
$str
��R T
)
��T U
{
�� 	

WriteEvent
�� 
(
�� '
ServiceRequestStopEventId
�� 0
,
��0 1
requestTypeName
��2 A
,
��A B
	exception
��C L
)
��L M
;
��M N
}
�� 	
}
�� 
}�� �!
ZC:\Users\irosales\source\repos\Test.NetCore\ApiServices\TodoListService\TodoListService.cs
	namespace 	
TodoListService
 
{ 
internal 
sealed 
class 
TodoListService )
:* +
StatefulService, ;
{ 
[ 	
	DllImport	 
( 
$str "
," #
CharSet$ +
=, -
CharSet. 5
.5 6
Unicode6 =
)= >
]> ?
public 
static 
extern 
void !
funcMalEscrita" 0
(0 1
IntPtr1 7
pointer8 ?
)? @
;@ A
public 
TodoListService 
( "
StatefulServiceContext 5
context6 =
)= >
: 
base 
( 
context 
) 
{ 	
}
 
public$$ 
new$$ 
IEnumerable$$ 
<$$ "
ServiceReplicaListener$$ 5
>$$5 6)
CreateServiceReplicaListeners$$7 T
($$T U
)$$U V
{%% 	
return&& 
new&& "
ServiceReplicaListener&& -
[&&- .
$num&&. /
]&&/ 0
;&&0 1
}'' 	
	protected.. 
override.. 
async..  
Task..! %
RunAsync..& .
(... /
CancellationToken../ @
cancellationToken..A R
)..R S
{// 	
var11 
myDictionary11 
=11 
await11 $
this11% )
.11) *
StateManager11* 6
.116 7
GetOrAddAsync117 D
<11D E
IReliableDictionary11E X
<11X Y
string11Y _
,11_ `
long11a e
>11e f
>11f g
(11g h
$str11h v
)11v w
;11w x\
PClaseQueNoHaceNadaSirveParaVerificarQueSonarQubeFuncioneDetectandoEsteNombreMalo22 \
c22] ^
=22_ `
new22a d]
PClaseQueNoHaceNadaSirveParaVerificarQueSonarQubeFuncioneDetectandoEsteNombreMalo	22e �
(
22� �
)
22� �
;
22� �
while33 
(33 
true33 
)33 
{44 
cancellationToken55 !
.55! "(
ThrowIfCancellationRequested55" >
(55> ?
)55? @
;55@ A
using77 
(77 
var77 
tx77 
=77 
this77  $
.77$ %
StateManager77% 1
.771 2
CreateTransaction772 C
(77C D
)77D E
)77E F
{88 
var99 
result99 
=99  
await99! &
myDictionary99' 3
.993 4
TryGetValueAsync994 D
(99D E
tx99E G
,99G H
$str99I R
)99R S
;99S T
Console:: 
.:: 
	WriteLine:: %
(::% &
c::& '
)::' (
;::( )
ServiceEventSource;; &
.;;& '
Current;;' .
.;;. /
ServiceMessage;;/ =
(;;= >
this;;> B
.;;B C
Context;;C J
,;;J K
$str;;L h
,;;h i
result<< 
.<< 
HasValue<< '
?<<( )
result<<* 0
.<<0 1
Value<<1 6
.<<6 7
ToString<<7 ?
(<<? @
)<<@ A
:<<B C
$str<<D [
)<<[ \
;<<\ ]
await>> 
myDictionary>> &
.>>& '
AddOrUpdateAsync>>' 7
(>>7 8
tx>>8 :
,>>: ;
$str>>< E
,>>E F
$num>>G H
,>>H I
(>>J K
key>>K N
,>>N O
value>>P U
)>>U V
=>>>W Y
++>>Z \
value>>\ a
)>>a b
;>>b c
awaitAA 
txAA 
.AA 
CommitAsyncAA (
(AA( )
)AA) *
;AA* +
}BB 
awaitDD 
TaskDD 
.DD 
DelayDD  
(DD  !
TimeSpanDD! )
.DD) *
FromSecondsDD* 5
(DD5 6
$numDD6 7
)DD7 8
,DD8 9
cancellationTokenDD: K
)DDK L
;DDL M
}EE 
}FF 	
}GG 
}HH 