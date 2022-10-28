set AppConfig="DVLP"
net stop OasisNphiesIntegration_%AppConfig%
copy C:\oasis_int\nphies\OasisNphiesIntegration%AppConfig%.jar C:\oasis_int\nphies\Backup
copy C:\balsam\Nphies_Deploy\app\branch\NPHIESIntergation-0.0.1-SNAPSHOT.jar C:\oasis_int\nphies\OasisNphiesIntegration%AppConfig%.jar
copy C:\oasis_int\nphies\application_%AppConfig%.propertie C:\oasis_int\nphies\Backup
copy C:\balsam\Nphies_Deploy\app\branch\prop\application.properties C:\oasis_int\nphies\application_%AppConfig%.propertie
net start OasisNphiesIntegration_%AppConfig%