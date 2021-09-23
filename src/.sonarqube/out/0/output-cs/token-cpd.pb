¬	
…C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\BadCodingExamples.cs
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
 
BadCodingExamples

 "
{ 
public 
static 
double 
GetDefaultInterest /
(/ 0
)0 1
{ 	
return 
$num 
; 
} 	
public 
static 
Guid 
GetGuid "
(" #
)# $
{ 	
return 
new 
Guid 
( 
) 
; 
} 	
public 
static 
	IPAddress 
GetIPAddress  ,
(, -
)- .
{ 	
var 
	ipaddress 
= 
$str '
;' (
return 
	IPAddress 
. 
Parse "
(" #
	ipaddress# ,
), -
;- .
} 	
} 
} ü
C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\CreditCardInterestCalcuator.cs
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
($ %!
IInterestRateProvider% : 
interestRateProvider; O
)O P
{ !
_interestRateProvider 
=  
interestRateProvider /
;/ 0
_interestRates 
= !
_interestRateProvider )
.) *
GetInterestRates* :
(: ;
); <
;< =
} 
public 
void	 &
CalculateInterestForHolder (
(( )
CreditCardHolder) 9
person: @
)@ A
{ 
foreach 

( 
Wallet 
wallet 
in 
person #
.# $
Wallets$ +
)+ ,
{ 
foreach 
( 

CreditCard 
card 
in 
wallet  &
.& '
CreditCards' 2
)2 3
{ 
card 	
.	 

InterestRate
 
= 
_interestRates '
.' (
First( -
(- .
r. /
=>0 2
r3 4
.4 5
Key5 8
==9 ;
card< @
.@ A
TypeA E
)E F
.F G
ValueG L
;L M$
CalculateInterestForCard 
( 
card "
)" #
;# $
wallet 
. 
TotalInterest 
+= 
card !
.! "
SimpleInterest" 0
;0 1
} 
person   

.  
 
TotalInterest   
+=   
wallet   "
.  " #
TotalInterest  # 0
;  0 1
}!! 
}"" 
public$$ 
void$$	 $
CalculateInterestForCard$$ &
($$& '

CreditCard$$' 1
card$$2 6
)$$6 7
{%% 
card&& 
.&& 
SimpleInterest&& 
=&& 
card&& 
.&& 
Balance&& %
*&&& '
card&&( ,
.&&, -
InterestRate&&- 9
;&&9 :
}'' 
}(( 
public** 
	interface** )
ICreditCardInterestCalculator** /
{++ 
void,, $
CalculateInterestForCard,, 
(,,  

CreditCard,,  *
card,,+ /
),,/ 0
;,,0 1
void-- &
CalculateInterestForHolder-- !
(--! "
CreditCardHolder--" 2
person--3 9
)--9 :
;--: ;
}.. 
}// Ã
‡C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\CreditCard.cs
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
public 
double	 
InterestRate 
{ 
get "
;" #
set$ '
;' (
}) *
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
} ‘
C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\CreditCardHolder.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
class		 
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
public 
double	 
TotalInterest 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ü
ˆC:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\CreditCards.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
class		 
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
get 
{ 
return	 
CreditCardType 
. 
Visa #
;# $
}% &
} 
} 
public 
class  
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
} Ò
‹C:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\CreditCardType.cs
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
CreditCardType		 
{

 
Visa 
, 

MasterCard 
} 
} ¥
ˆC:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\ICreditCard.cs
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
double 
InterestRate	 
{ 
get 
; 
set  
;  !
}" #
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
} †
ƒC:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\Entities\Wallet.cs
	namespace 	
Demo_Console_App
 
. (
CreditCardInterestCalculator 7
.7 8
Entities8 @
{ 
public		 
class		 
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
public 
double	 
TotalInterest 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ü
ˆC:\Users\mranu\source\repos\unit-testing-demo\src\Demo Console App\Demo Console App\CreditCardInterestCalculator\InterestRateProvider.cs
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
{ 
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
ratesDoc 
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
( 
x 
=> 
GetCard 
( 
x 
) 
) 
. 
ToList 
( 
) 
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
x 
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
= 
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
 
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
IEnumerable$$ 
<$$ 
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
}&& µ
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
} §
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
private 
readonly 
ICurrencyConverter +
_currencyConverter, >
;> ?
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
} ì
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
return 
Math 
. 
Round 
( 
amount $
)$ %
;% &
} 	
} 
} 