curl -L --ssl-no-revoke "https://drive.google.com/u/0/uc?id=1H27SyQgwjzH5FrD8WYA0LE9UhfcZexL0&export=download" > c:\balsam\app\NPHIESIntergation-0.0.1-SNAPSHOT.jar
net stop OasisNphiesIntegration_PROD
copy C:\balsam\app\NPHIESIntergation-0.0.1-SNAPSHOT.jar C:\oasis_int\nphies\OasisNphiesIntegration.jar
net start OasisNphiesIntegration_PROD
