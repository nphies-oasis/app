net stop OasisNphiesIntegration_PROD
copy C:\oasis_int\nphies\OasisNphiesIntegration.jar C:\oasis_int\nphies\Backup
copy C:\balsam\Nphies_Deploy\app\branch\NPHIESIntergation-0.0.1-SNAPSHOT.jar C:\oasis_int\nphies\OasisNphiesIntegration.jar
rem copy C:\oasis_int\nphies\application_prod.properties C:\oasis_int\nphies\Backup
rem copy C:\balsam\Nphies_Deploy\app\branch\prop\application.properties C:\oasis_int\nphies\application_prod.properties
net start OasisNphiesIntegration_PROD