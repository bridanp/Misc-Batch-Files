# Miscellaneous Batch Files
Just some sample batch files I use on a regular basis.  There are better tools out there for this, but for a quick and dirty, these work great for me.

## CompanySite
There's this ungodly spreadsheet that I have to pull company and site information from.  Ungodly because of the merged cells and just flat out garbage arrangement of the thing.  To get around this, I download it as a csv, then use this batch file to just pull what is necessary.  Turns an hour long ordeal into a 2-minute non-event.

## LogParser
I only need certain information from the IIS logs:  The c-ip, a certain page that was visited, date/time.  The Log Parser program does a really good interactive job of pulling this data, but the logs are huge, and the GUI sometimes locks causing a restart of the whole monthly process.  Running this batch file is so much easier.

## PDFtk and Control-M
We have this vendor who is supposed to send a pdf file that includes a statement for 15,000 customer accounts.  Only problem:  they send it one account at a time.  Gotta automate that one with CLI on the distributed scheduler system using a product called PDFtk:
cli [{(-U emUser -P emPass) | -pf passwordFile}] -h hostName 
[-t timeout] [-DDMM] [-BY_FORCE] pdftk *.pdf cat output merged.pdf <cmd> [ACTION_REASON <reason for taking an audit action> [ACTION_NOTE <descriptive reason for audit action>].







