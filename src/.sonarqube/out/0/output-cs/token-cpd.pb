�
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\BadCodingExamples.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
{ 
public		 

class		 
BadCodingExamples		 "
{

 
public 
double 
GetInterest !
(! "
)" #
{ 	
return
$num
;
} 	
} 
} �
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\CreditCardInterestCalcuator.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
{		 
public

 

class

 '
CreditCardInterestCalcuator

 ,
:

- .)
ICreditCardInterestCalculator

/ L
{ 
private 	
readonly
 !
IInterestRateProvider (!
_interestRateProvider) >
;> ?
private 	
readonly 
IEnumerable 
<  
KeyValuePair  ,
<, -
CreditCardType- ;
,; <
double= C
>C D
>D E
_interestRatesF T
;T U
public '
CreditCardInterestCalcuator	 $
($ %
)% &
:' (
this) -
(- .
new. 1 
InterestRateProvider2 F
(F G
)G H
)H I
{ 
} 
public '
CreditCardInterestCalcuator	 $
($ %!
IInterestRateProvider% : 
interestRateProvider; O
)O P
{ !
_interestRateProvider 
=  
interestRateProvider /
;/ 0
_interestRates 
= !
_interestRateProvider )
.) *
GetInterestRates* :
(: ;
); <
;< =
} 
public 
void	 
CalculateInterestForHolder (
(( )
CreditCardHolder) 9
person: @
)@ A
{ 
foreach 

( 
Wallet 
wallet 
in 
person #
.# $
Wallets$ +
)+ ,
{ 
foreach 
( 

CreditCard
card 
in 
wallet  &
.& '
CreditCards' 2
)2 3
{ 
card   	
.  	 

InterestRate  
 
=   
_interestRates   '
.  ' (
First  ( -
(  - .
r  . /
=>  0 2
r  3 4
.  4 5
Key  5 8
==  9 ;
card  < @
.  @ A
Type  A E
)  E F
.  F G
Value  G L
;  L M$
CalculateInterestForCard!! 
(!! 
card!! "
)!!" #
;!!# $
wallet"" 
."" 

+="" 
card"" !
.""! "
SimpleInterest""" 0
;""0 1
}## 
person$$ 

.$$
 

+=$$ 
wallet$$ "
.$$" #

;$$0 1
}%% 
}&& 
public(( 
void((	 
CalculateInterestForCard(( &
(((& '

CreditCard((' 1
card((2 6
)((6 7
{)) 
card** 
.** 
SimpleInterest** 
=** 
card** 
.** 
Balance** %
***& '
card**( ,
.**, -
InterestRate**- 9
;**9 :
}++ 
},, 
public.. 
	interface.. )
ICreditCardInterestCalculator.. /
{// 
void00 $
CalculateInterestForCard00 
(00  

CreditCard00  *
card00+ /
)00/ 0
;000 1
void11 &
CalculateInterestForHolder11 !
(11! "
CreditCardHolder11" 2
person113 9
)119 :
;11: ;
}22 
}33 �
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\CreditCard.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
abstract		 
class		 

CreditCard		 !
:		" #
ICreditCard		$ /
{

 
public 
abstract	 
CreditCardType  
Type! %
{& '
get( +
;+ ,
}- .
public
double
InterestRate
{
get
;
set
;
}
public 
double	 
Balance 
{ 
get 
; 
set "
;" #
}$ %
public 
double	 
SimpleInterest 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\CreditCardHolder.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
class		 
CreditCardHolder		 
{

 
public 
IEnumerable	 
< 
Wallet 
> 
Wallets $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public
double

{
get
;
set
;
}
} 
} �
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\CreditCards.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
class		 
VisaCreditCard		 
:		 

CreditCard		 )
{

 
public 
override	 
CreditCardType  
Type! %
{ 
get
{
return
CreditCardType
.
Visa
;
}
} 
} 
public 
class 
MasterCardCreditCard "
:# $

CreditCard% /
{ 
public 
override	 
CreditCardType  
Type! %
{ 
get 
{ 
return	 
CreditCardType 
. 

MasterCard )
;) *
}+ ,
} 
} 
} �
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\CreditCardType.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
enum		 
CreditCardType		
{

 
Visa 
, 

MasterCard 
}
} �
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\ICreditCard.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
	interface		 
ICreditCard		 
{

 
CreditCardType 
Type 
{ 
get 
; 
} 
double
InterestRate
{
get
;
set
;
}
double 
Balance	 
{ 
get 
; 
set 
; 
} 
double 
SimpleInterest	 
{ 
get 
; 
set "
;" #
}$ %
} 
} �
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\Wallet.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
class		 
Wallet		 
{

 
public 
IEnumerable	 
< 
ICreditCard  
>  !
CreditCards" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public
double

{
get
;
set
;
}
} 
} �
�C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\InterestRateProvider.cs
	namespace

 	
Demo_Console_App


 
.

 (
CreditCardInterestCalculator

 7
{ 
public 

class  
InterestRateProvider %
:& '!
IInterestRateProvider( =
{
public 
IEnumerable	 
< 
KeyValuePair !
<! "
CreditCardType" 0
,0 1
double2 8
>8 9
>9 :
GetInterestRates; K
(K L
)L M
{ 
string 	
textXML
 
= 
File 
. 
ReadAllText $
($ %
$str% \
)\ ]
;] ^
	XDocument 
ratesDoc
= 
	XDocument !
.! "
Parse" '
(' (
textXML( /
)/ 0
;0 1
List 
< 
KeyValuePair 
< 
CreditCardType #
,# $
double% +
>+ ,
>, -
rates. 3
=4 5
ratesDoc6 >
.> ?
Root? C
. 
Elements 
( 
$str 
) 
. 
Select 
( 
x
=> 
GetCard 
( 
x 
) 
) 
. 
ToList 
( 
)
; 
return 	
rates
 
; 
} 
private 	
KeyValuePair
 
< 
CreditCardType %
,% &
double' -
>- .
GetCard/ 6
(6 7
XElement7 ?
x@ A
)A B
{ 
var 
key 

= 
x
. 
Elements 
( 
$str 
) 
.  
First  %
(% &
)& '
.' (
Value( -
;- .
var 
value 
=
x 
. 
Elements 
( 
$str $
)$ %
.% &
First& +
(+ ,
), -
.- .
Value. 3
;3 4
return 	
new
 
KeyValuePair 
< 
CreditCardType )
,) *
double+ 1
>1 2
(2 3
Enum3 7
.7 8
Parse8 =
<= >
CreditCardType> L
>L M
(M N
keyN Q
)Q R
,R S
doubleT Z
.Z [
Parse[ `
(` a
valuea f
)f g
)g h
;h i
} 
}   
public"" 
	interface"" !
IInterestRateProvider"" '
{## 
IEnumerable$$ 
<$$
KeyValuePair$$ 
<$$ 
CreditCardType$$ )
,$$) *
double$$+ 1
>$$1 2
>$$2 3
GetInterestRates$$4 D
($$D E
)$$E F
;$$F G
}%% 
}&& �
iC:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\ICurrencyConverter.cs
	namespace 	
Demo_Console_App
 
{ 
public 

	interface 
ICurrencyConverter '
{ 
public 
decimal 
Convert 
( 
decimal &
amount' -
)- .
;. /
} 
} �
iC:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\InterestCalculator.cs
	namespace 	
Demo_Console_App
 
{ 
public		 

class		 
InterestCalculator		 #
{

 
private 
readonly 
decimal  
InterestRatePercent! 4
=5 6
$num7 9
;9 :
private
readonly
ICurrencyConverter
_currencyConverter
;
public 
InterestCalculator !
(! "
ICurrencyConverter" 4
currencyConverter5 F
)F G
{ 	
_currencyConverter 
=  
currencyConverter! 2
;2 3
} 	
public 
decimal 
	Calculate  
(  !
decimal! (
principalAmount) 8
,8 9
int: =
years> C
)C D
{ 	
decimal 
interest 
= 
(  
principalAmount  /
*0 1
InterestRatePercent2 E
*F G
yearsH M
)M N
/O P
$numQ T
;T U
return 
_currencyConverter %
.% &
Convert& -
(- .
interest. 6
)6 7
;7 8
} 	
} 
} �
^C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\Program.cs
	namespace 	
Demo_Console_App
 
{ 
class		 	
Program		
 
{

 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
var
interestCalculator
=
new
InterestCalculator
(
new
USDConverter
(
)
)
;
decimal 
	interest1 
= 
interestCalculator  2
.2 3
	Calculate3 <
(< =
$num= B
,B C
$numD E
)E F
;F G
Console 
. 
	WriteLine 
( 
$"  
$str  3
{3 4
	interest14 =
}= >
"> ?
)? @
;@ A
Console 
. 
	WriteLine 
( 
$str \
)\ ]
;] ^)
ICreditCardInterestCalculator  
interestCal! ,
=- .
new/ 2'
CreditCardInterestCalcuator3 N
(N O
)O P
;P Q
var 

cardHolder 
= 
new 
CreditCardHolder (
{ 
Wallets 
= 
new 
List 
< 
Wallet 
> 
{ 
new 
Wallet	 
{ 
CreditCards 
= 
new 
List 
< 

CreditCard '
>' (
{ 
new 

VisaCreditCard 
{ 
Balance #
=$ %
$num& )
}* +
,+ ,
}   
}!! 
,!! 
new"" 
Wallet""	 
{## 
CreditCards$$ 
=$$ 
new$$ 
List$$ 
<$$ 

CreditCard$$ '
>$$' (
{%% 
new&& 
 
MasterCardCreditCard&& 
{&&  !
Balance&&" )
=&&* +
$num&&, /
}&&0 1
,&&1 2
}'' 
}(( 
})) 
}** 
;** 
interestCal,, 
.,, &
CalculateInterestForHolder,, )
(,,) *

cardHolder,,* 4
),,4 5
;,,5 6
var-- 
wallets-- 
=-- 

cardHolder-- 
.-- 
Wallets-- #
.--# $
ToList--$ *
(--* +
)--+ ,
;--, -
wallets.. 

...
 
ForEach.. 
(.. 
w.. 
=>.. 
Console.. 
...  
	WriteLine..  )
(..) *
$"..* ,
$str.., B
{..B C
w..C D
...D E

}..R S
"..S T
)..T U
)..U V
;..V W
Console// 

.//
 
	WriteLine// 
(// 
$"// 
$str// 7
{//7 8

cardHolder//8 B
.//B C

}//P Q
"//Q R
)//R S
;//S T
}00 
}11 
}22 �
cC:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\USDConverter.cs
	namespace 	
Demo_Console_App
 
{ 
public		 

class		 
USDConverter		 
:		 
ICurrencyConverter		  2
{

 
public 
decimal 
Convert 
( 
decimal &
amount' -
)- .
{ 	
return
Math
.
Round
(
amount
)
;
} 	
} 
} 