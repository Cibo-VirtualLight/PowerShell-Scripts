#Rename your video files downloaded from YOUTUBE so they will display with order
#Iterate through all the files in a certain folder, then take the last two character in the file name to the front.
#Previous -> First winter in our new house _ Ep. 33.mp4
#Now -> 33First winter in our new house _ Ep. 33.mp4
[string]$partStr
gci E:\YoutubeVideo | ForEach-Object {
$partStr = $_.Name.Substring($_.Name.Length -6)
$partStr = $partStr.Substring(0,2)
Rename-Item -path $_.FullName -newname ($partStr + $_.Name)
Write-Host $_.Name}
