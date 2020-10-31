@echo on
:: Set variables
set projectdir=%USERPROFILE%\Masterthesis
set logfile=backup.log
set current_date=%date%-%time% 
set message="automatic backup-%current_date%"
:: Start logging
echo %current_date% Start backup script >> %logfile%
echo Saving output to %logfile% >> %logfile%
:: Start simple git workflow and log the output
cd /d %projectdir%
cmd /c "git status"
cmd /c "git add --all"
cmd /c "git commit -m %message%"
cmd /c "git push"
:: End script
echo -------- End of Script -------- >> %logfile%
