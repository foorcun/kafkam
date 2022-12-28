rem "%~dp0kafka-run-class.bat" org.apache.zookeeper.server.quorum.QuorumPeerMain %*

rem cmd /k myScript.bat

echo myScriptDriver dan - >> log.txt
echo %TIME% >> log.txt



IF ["%KAFKA_LOG4J_OPTS%"] EQU [""] (
    set KAFKA_LOG4J_OPTS=-Dlog4j.configuration=file:%~dp0../../config/log4j.properties
)
IF ["%KAFKA_HEAP_OPTS%"] EQU [""] (
    set KAFKA_HEAP_OPTS=-Xmx512M -Xms512M
)

echo %* >> log.txt
"%~dp0myScript.bat" buBirinciArgument %*


