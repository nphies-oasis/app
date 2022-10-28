curl -L --ssl-no-revoke "https://drive.google.com/u/0/uc?id=1eem3plmIcEGxLXlKncn6qXNqMuZ-KP20&export=download" > C:\balsam\Nphies_Deploy\app\branch\NPHIESIntergation-0.0.1-SNAPSHOT.jar
curl -L --ssl-no-revoke "https://drive.google.com/u/0/uc?id=1ih0IU8hWeW-TukHLn4FEI2ZiZB0Jdomb&export=download" > C:\balsam\Nphies_Deploy\app\branch\prop\application.properties
curl -L --ssl-no-revoke "https://drive.google.com/u/0/uc?id=1UHu_cBVyxMG9ePdJ4Wd35sJptdHq6MK6&export=download" > C:\balsam\Nphies_Deploy\app\branch\prop\facility.properties

set AppConfig="DVLP"
net stop OasisNphiesIntegration_%AppConfig%
copy C:\oasis_int\nphies\OasisNphiesIntegration%AppConfig%.jar C:\oasis_int\nphies\Backup
copy C:\balsam\Nphies_Deploy\app\branch\NPHIESIntergation-0.0.1-SNAPSHOT.jar C:\oasis_int\nphies\OasisNphiesIntegration%AppConfig%.jar
copy C:\oasis_int\nphies\application_%AppConfig%.properties C:\oasis_int\nphies\Backup
copy C:\balsam\Nphies_Deploy\app\branch\prop\application.properties C:\oasis_int\nphies\application_%AppConfig%.properties
net start OasisNphiesIntegration_%AppConfig%