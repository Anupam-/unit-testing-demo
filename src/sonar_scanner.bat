dotnet build-server shutdown

dotnet test -p:CollectCoverage=true -p:CoverletOutputFormat=opencover -p:Exclude=\"[Demo_xUnit_App.*]" -p:ExcludeByFile="**/*.xml"

dotnet sonarscanner begin -k:"Demo-Unit-Test-Project" -d:sonar.login="1364ba86ba6c6186f5d8cf023487ca87a324dde6" -d:sonar.cs.opencover.reportsPaths="**/coverage.opencover.xml" -d:sonar.coverage.exclusions="Demo Console App/Demo Console App/CreditCardInterestCalculator/Data/*.xml, Demo xUnit App/coverage.opencover.xml"

dotnet build

dotnet sonarscanner end -d:sonar.login="1364ba86ba6c6186f5d8cf023487ca87a324dde6"