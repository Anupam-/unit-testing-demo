dotnet sonarscanner begin /k:"Demo-Unit-Test-Project-NET-46" /d:sonar.login="f03eb3ce3a0826d6510a53fc241e836978616574" /d:sonar.host.url="http://localhost:9000/" /d:sonar.cs.opencover.reportsPaths="Demo xUnit App/TestResults/**/coverage.opencover.xml" /d:sonar.cs.vstest.reportsPaths="Demo xUnit App/TestResults/testresults.trx" /d:sonar.coverage.exclusions="Demo Console App/CreditCardInterestCalculator/Data/*.xml, Demo xUnit App/coverage.opencover.xml"

dotnet build

rmdir "Demo xUnit App/TestResults" /q /s

dotnet test --settings="Demo xUnit App/runsettings.xml" --logger "trx;LogFileName=testresults.trx"

dotnet sonarscanner end /d:sonar.login="f03eb3ce3a0826d6510a53fc241e836978616574"

pause