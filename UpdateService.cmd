set YYYYMMDD=%DATE:~10,4%.%DATE:~4,2%.%DATE:~7,2%_%TIME:~0,2%.%TIME:~3,2%.%TIME:~6,2%
set AppConfig=%1
net stop OasisNphiesIntegration_%AppConfig%
copy C:\oasis_int\nphies\OasisNphiesIntegration%AppConfig%.jar C:\oasis_int\nphies\Backup\OasisNphiesIntegration%AppConfig%_%YYYYMMDD%.jar
copy C:\balsam\Nphies_Deploy\app\branch\NPHIESIntergation-0.0.1-SNAPSHOT.jar C:\oasis_int\nphies\OasisNphiesIntegration%AppConfig%.jar
copy copy C:\oasis_int\nphies\application_%AppConfig%.properties C:\oasis_int\nphies\Backup\application_%AppConfig%__%YYYYMMDD%.properties
copy C:\balsam\Nphies_Deploy\app\branch\prop\application.properties C:\oasis_int\nphies\application_%AppConfig%.properties
net start OasisNphiesIntegration_%AppConfig%