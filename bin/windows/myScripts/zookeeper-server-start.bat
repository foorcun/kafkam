@echo off


IF [%1] EQU [] (
	echo USAGE: %0 zookeeper.properties
	EXIT /B 1
)

SetLocal
IF ["%KAFKA_LOG4J_OPTS%"] EQU [""] (
    set KAFKA_LOG4J_OPTS=-Dlog4j.configuration=file:%~dp0../../config/log4j.properties
)
IF ["%KAFKA_HEAP_OPTS%"] EQU [""] (
    set KAFKA_HEAP_OPTS=-Xmx512M -Xms512M
)

"%~dp0kafka-run-class.bat" org.apache.zookeeper.server.quorum.QuorumPeerMain %*

rem current path teki kafka-run-class.bat calistir
rem kafka-run-class.bat birinci parametreye org.apache..... argument gec
rem %* bu da su: zookeeper-server-start.bat (yani bu batch file) a gecilen tum argumentleri kafka-run-class.bat e de argument olarak gec (en fazla 9 tane alir) ( ki gecen argument de PATH/zookeeper.properties)

EndLocal


