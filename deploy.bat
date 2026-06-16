@echo off
echo.
echo ===========================================
echo      DEPLOY COM_SMIGINIS
echo ===========================================
echo.

robocopy administrator C:\laragon\www\joomla\administrator\components\com_smiginis /MIR
robocopy site C:\laragon\www\joomla\components\com_smiginis /MIR
robocopy media\com_smiginis C:\laragon\www\joomla\media\com_smiginis /MIR
robocopy language C:\laragon\www\joomla\language /E

echo.
echo ===========================================
echo Deploy baigtas.
echo ===========================================
pause