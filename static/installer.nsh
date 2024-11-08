!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "heliox" "Software\Clients\StartMenuInternet\heliox\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\heliox" "" "heliox HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\heliox\Application" "AppUserModelId" "heliox"
  WriteRegStr SHCTX "SOFTWARE\Classes\heliox\Application" "ApplicationIcon" "$INSTDIR\heliox.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\heliox\Application" "ApplicationName" "heliox"
  WriteRegStr SHCTX "SOFTWARE\Classes\heliox\Application" "ApplicationCompany" "heliox"      
  WriteRegStr SHCTX "SOFTWARE\Classes\heliox\Application" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\heliox\DefaultIcon" "DefaultIcon" "$INSTDIR\heliox.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\heliox\shell\open\command" "" '"$INSTDIR\heliox.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "heliox" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "heliox" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox" "" "heliox"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\DefaultIcon" "" "$INSTDIR\heliox.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\Capabilities" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\Capabilities" "ApplicationName" "heliox"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\Capabilities" "ApplicationIcon" "$INSTDIR\heliox.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\Capabilities\FileAssociations" ".htm" "heliox"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\Capabilities\FileAssociations" ".html" "heliox"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\Capabilities\URLAssociations" "http" "heliox"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\Capabilities\URLAssociations" "https" "heliox"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\Capabilities\StartMenu" "StartMenuInternet" "heliox"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox\shell\open\command" "" "$INSTDIR\heliox.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\heliox"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\heliox"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "heliox"
!macroend