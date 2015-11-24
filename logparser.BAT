SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
:: Find the wanted cs-uri-query from the IIS Log Files
find /i "DepositWS.svc" ex*.log > merged.txt
:: Write out the count found in each file
find /c "DepositWS.svc" ex*.log > count.txt
:: Find just the s-ip we want to read
find /i "172.30.100.19" merged.txt > remint.txt
:: Sort the whole thing on the c-ip 
sort /+98 remint.txt > parsed.log
:: Remove sort work files
del *.txt
PAUSE

