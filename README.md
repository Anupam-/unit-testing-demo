# :pushpin: Demo Project - xUnit

## Why is Unit testing

:heavy_check_mark: Help us to be Agile and eliminate fear of change  
:heavy_check_mark: Improve the code quality  
:heavy_check_mark: Help in debugging  
:heavy_check_mark: Help to find bugs in early stage of development  



## Comparision between nUnit and xUnit
:heavy_check_mark: xUnit have less attributes and attributes names are intutive  
:heavy_check_mark: xUnit follow principle of class and uses constructor for initialization/setup and IDispose for cleaup  
:heavy_check_mark: In xUnit its easy to inject Fixtures  
:heavy_check_mark: We can also use Moq in xUnit just like in nUnit  

## Packages required for xUnit

:hammer: xUnit  
:hammer: xUnit Runner  
:hammer: Microsoft NET test SDK  

***
:hammer: Moq  
:hammer: Fluent Assertion  

## Common attributes and their usase
| Attribute        | Usase       |
| -------------    |-------------|
| Fact             | Use to tell a method is unit test method |
| Theory           | Use as Fact but where a test method required different set of data and we want to remove duplicate test mothods |
| InlineData       | It is used with Theory attribute to provide parameters |     
| Fixture          | Use share a context in a test class |
| CollectionFixture| Use to share context between multiple test classes |
