# THIS IS THE STATIC URL AND PATH LOCATIONS
$Url = "https://www.nseindia.com/content/fo/fo_mktlots.csv"
$Path = "c:\Users\gauta_000\Desktop\csv2git\fo_mktlots.csv"
$date = Get-Date

#GET THE DATA IN FORM OF csv WITH CORRECYT HEADER INFO INTO LOCAL DIR
Invoke-WebRequest $Url -Headers @{"accept"="application/csv"} -OutFile $Path


###  the github url path is >> https://github.com/GautamDMan/CSV2GIT.git
## do git clone https://github.com/GautamDMan/CSV2GIT.git on desktop
## cd C:\Users\gauta_000\Desktop\csv2git\
## powershell .\csv2git.ps1
Set-Location C:\Users\gauta_000\Desktop\csv2git\
git add .
git commit -m "commit for date ($date)" 
git push -u origin master



 