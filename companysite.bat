SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
:: Delete files before beginning
del site.txt
del company.txt
:: Find the Company info in the file
find /i "Company:" companyinfo.csv > company.txt
:: Find the Site info in the file
find /i "Site:" companyinfo.csv > site.txt
:: Sort the company file on the first letter of each company 
sort /+10 company.txt
:: Sort the site file on the first letter of each company 
sort /+7 site.txt
:: Merge the files together
type site.txt >> company.txt
PAUSE