@echo off
title NETSTAT CONNECTION LOGGER
echo Now logging all connections. . .
ping 127.0.0.1 -n 2 > nul
echo NETSTAT CONNECTION LOGGER. > %temp%\NETSTAT.txt
echo. >> %temp%\NETSTAT.txt
echo This log was generated on %date% at %time% >> %temp%\NETSTAT.txt
netstat -n >> %temp%\NETSTAT.txt
start %temp%\NETSTAT.txt
exit