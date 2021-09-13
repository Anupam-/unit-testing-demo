# :pushpin: Demo Project - xUnit

<img src="https://github.com/Anupam-/unit-testing-demo/blob/main/assets/unit-testing.PNG?raw=true" alt="Unit Testing" width="250" height="250">

## Why Unit Testing

:heavy_check_mark: Help us to be Agile and eliminate fear of change  
:heavy_check_mark: Improve the code quality  
:heavy_check_mark: Help in debugging  
:heavy_check_mark: Help to find bugs in early stage of development  

## AAA Pattern

:a: Arrange: This block is used for preparing data for a method to be unit tested  
:a: Act: This block is use to invoke method  
:a: Assert: This block is use to compare expected output and actual output  

## Comparision between nUnit and xUnit
:heavy_check_mark: xUnit have less attributes and attributes names are intutive  
:heavy_check_mark: xUnit follow principle of class and use constructor for initialization/setup and IDispose for cleaup  
:heavy_check_mark: In xUnit its easy to inject Fixtures  
:heavy_check_mark: We can also use Moq in xUnit just like in nUnit  

## Packages required for xUnit

:hammer: xUnit  
:hammer: xUnit Runner  
:hammer: Microsoft NET test SDK  
:hammer: *Moq*  
:hammer: *Fluent Assertion*  

## Common attributes and their usage
| Attribute        | Usage       |
| -------------    |-------------|
| Fact             | Use to tell a method is unit test method |
| Theory           | Use as Fact but where a test method required different set of data and we want to remove duplicate test mothods |
| InlineData       | It is used with Theory attribute to provide parameters |     
| Fixture          | To share a context in a test class (singleton instance) |
| CollectionFixture| To share context between multiple test classes |

## Code Analysis ( Sonarqube )

<img src="https://github.com/Anupam-/unit-testing-demo/blob/main/assets/sonar quality gate status.PNG?raw=true" alt="Coverage Status" width="450" height="550">

<img src="https://github.com/Anupam-/unit-testing-demo/blob/main/assets/code quality issues.PNG?raw=true" alt="Code issues" width="450" height="550">
