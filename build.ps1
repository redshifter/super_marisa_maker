# if we're going to have a github, we might as well have a build command
del *.zip
Get-ChildItem -Recurse -Directory | ForEach-Object {
	Compress-Archive -Path $($_.Name) -DestinationPath "$($_.Name).zip"
}