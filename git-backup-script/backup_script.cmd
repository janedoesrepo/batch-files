@echo on
:: Set variables
set project_dir=%USERPROFILE%\Documents\Masterthesis
set message="automatic backup-%date%-%time%"
:: Start logging
:: Start simple git workflow and log the output
cd /d %project_dir%
cmd /c "git status"
cmd /c "git add --all"
cmd /c "git commit -m %message%"
cmd /c "git push"
:: End script