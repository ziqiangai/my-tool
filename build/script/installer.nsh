!macro customInstall
    WriteRegStr HKCR ".uxls\ShellNew" "NullFile" ""
    WriteRegStr HKCR ".udoc\ShellNew" "NullFile" ""

    ReadRegStr $0 HKCU "Software\Microsoft\Windows\CurrentVersion\Explorer\Discardable\PostSetup\ShellNew\Classes" ""
    StrCmp $0 "" 0 +2
    DetailPrint "Registry key not found or empty."

    StrCpy $1 "$0\0.udoc\0.uxls\0"

    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Explorer\Discardable\PostSetup\ShellNew\Classes" "" $1
    DetailPrint "Registry key updated."
!macroend
