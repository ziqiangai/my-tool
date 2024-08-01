!macro customInstall
    ReadRegStr $0 HKCU "Software\Microsoft\Windows\CurrentVersion\Explorer\Discardable\PostSetup\ShellNew\Classes" ""
    StrCmp $0 "" 0 +2
    DetailPrint "Registry key not found or empty."

    ; 假设我们要追加一些内容
    StrCpy $1 "$0 .udoc .uxls"

    ; 写入修改后的内容到注册表
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Explorer\Discardable\PostSetup\ShellNew\Classes" "" $1
    DetailPrint "Registry key updated."
!macroend
