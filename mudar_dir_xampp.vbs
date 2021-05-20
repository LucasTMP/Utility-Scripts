Const FOR_READING = 1
Const FOR_WRITING = 2
strFileName = "C:\xampp\apache\conf\httpd.conf"


Set objFS = CreateObject("Scripting.FileSystemObject")
Set objTS = objFS.OpenTextFile(strFileName, FOR_READING)
strContents = objTS.ReadAll
objTS.Close


Set objTS = objFS.OpenTextFile(strFileName, FOR_WRITING)

strContents = Replace(strContents, "C:/xampp/htdocs", "C:/Site")
objTS.WriteLine strContents
objTS.Close

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set WshShell=CreateObject("Wscript.Shell")
NewFolder = "C:\Site"
objFSO.CreateFolder NewFolder

Set objShell = CreateObject("WScript.Shell")
strDesktop = objShell.SpecialFolders("Desktop")
Set objLink = objShell.CreateShortcut(strDesktop & "\Site.lnk")
objLink.TargetPath = "C:\Site"
objLink.Save
