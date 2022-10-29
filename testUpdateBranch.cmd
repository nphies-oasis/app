curl -L --ssl-no-revoke "https://github.com/nphies-oasis/app/raw/main/jar/NPHIESIntergation-0.0.1-SNAPSHOT.jar" > C:\balsam\Nphies_Deploy\app\branch\NPHIESIntergation-0.0.1-SNAPSHOT.jar
curl -L --ssl-no-revoke "https://github.com/nphies-oasis/app/raw/main/jar/prop/application.properties" > C:\balsam\Nphies_Deploy\app\branch\prop\application.properties
curl -L --ssl-no-revoke "https://github.com/nphies-oasis/app/raw/main/jar/prop/facility.properties" > C:\balsam\Nphies_Deploy\app\branch\prop\facility.properties
set AppConfig=TEST
net stop OasisNphiesIntegration_%AppConfig%
copy C:\oasis_int\nphies\OasisNphiesIntegration%AppConfig%.jar C:\oasis_int\nphies\Backup
copy C:\balsam\Nphies_Deploy\app\branch\NPHIESIntergation-0.0.1-SNAPSHOT.jar C:\oasis_int\nphies\OasisNphiesIntegration%AppConfig%.jar
rem copy C:\oasis_int\nphies\application_%AppConfig%.properties C:\oasis_int\nphies\Backup
rem copy C:\balsam\Nphies_Deploy\app\branch\prop\application.properties C:\oasis_int\nphies\application_%AppConfig%.properties
net start OasisNphiesIntegration_%AppConfig%

prop/application.properties