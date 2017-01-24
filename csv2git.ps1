# THIS IS THE STATIC URL AND PATH LOCATIONS
$Url = "https://www.nseindia.com/content/fo/fo_mktlots.csv"
$Path = "c:\Users\gauta_000\Desktop\csv2git\fo_mktlots.csv"
$date = Get-Date

#GET THE DATA IN FORM OF csv WITH CORRECYT HEADER INFO INTO LOCAL DIR
Invoke-WebRequest $Url -Headers @{"accept"="application/csv"} > $Path

cd C:\Users\gauta_000\Desktop\csv2git\
git add *.csv
git commit -m "commit for date" + $date
git remote add origin https://github.com/GautamDMan/csv2git.git
git push -f origin master

#https://github.com/GautamDMan/CSV2GIT.git
 