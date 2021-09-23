dotnet build-server shutdown

dotnet sonarscanner begin -k:"Demo-Unit-Test-Project" -d:sonar.login="1364ba86ba6c6186f5d8cf023487ca87a324dde6" -d:sonar.host.url="http://localhost:9000/" -d:sonar.cs.opencover.reportsPaths="Demo xUnit App/TestResults/coverage.opencover.xml" -d:sonar.cs.vstest.reportsPaths="Demo xUnit App/TestResults/testresults.trx" -d:sonar.coverage.exclusions="Demo Console App/Demo Console App/CreditCardInterestCalculator/Data/*.xml, Demo xUnit App/coverage.opencover.xml"

dotnet build

dotnet test "Demo xUnit App/Demo xUnit App.csproj" --no-build --no-restore --logger "trx;LogFileName=testresults.trx" -p:CollectCoverage=true -p:CoverletOutputFormat=opencover -p:CoverletOutput="TestResults/coverage.opencover.xml" -p:Exclude=\"[Demo_xUnit_App.*]" -p:ExcludeByFile="**/*.xml"

dotnet sonarscanner end -d:sonar.login="1364ba86ba6c6186f5d8cf023487ca87a324dde6"

pause