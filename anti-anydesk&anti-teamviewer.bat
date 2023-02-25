@echo off
set Process=AnyDesk.exe
tasklist | find /i "%Process%" >nul && (
  set Processo=TeamViewer.exe
  tasklist | find /i "%Processo%" >nul && (
    goto :dois_programas
  ) || (
    goto :um_programa
  )
) || (
  goto :nenhum_programa
)

:dois_programas
goto :exit

:um_programa

goto :exit

:nenhum_programa
echo nada aberto
pause >nul
goto :exit

:exit
exit