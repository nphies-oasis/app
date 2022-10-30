TortoiseProc.exe /command:update /path:"C:\balsam\Jars\app\jar\NPHIESIntergation-0.0.1-SNAPSHOT.jar" /closeonend:1
TortoiseProc.exe /command:update /path:"C:\balsam\Jars\app\jar\prop\application.properties" /closeonend:1
TortoiseProc.exe /command:update /path:"C:\balsam\Jars\app\jar\prop\facility.properties" /closeonend:1
cd C:\balsam\Jars\app\
git commit -a
git push