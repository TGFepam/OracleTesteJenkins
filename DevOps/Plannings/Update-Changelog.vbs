Option Explicit

Dim objFSO, objShell, ScriptPS, Retorno

Set objFSO   = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("WScript.Shell")
ScriptPS = objFSO.BuildPath(objFSO.GetParentFolderName(WScript.ScriptFullName), "Update-Changelog.ps1")

Retorno = objShell.Run("pwsh.exe -NoProfile -ExecutionPolicy Bypass -File """ & ScriptPS & """", 0, True)

If Retorno = 0 Then
    MsgBox "CHANGELOG atualizado", vbInformation, "Update-Changelog"
ElseIf Retorno = 2 Then
    MsgBox "TAG ja existe no CHANGELOG", vbInformation, "Update-Changelog"
Else
    MsgBox "Falha atualizando CHANGELOG", vbCritical, "Update-Changelog"
End If
