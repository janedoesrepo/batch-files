@echo off

:: check if two but not three parameters are provided
If not "%~2"=="" if "%~3"=="" goto runscript
echo ERROR: Could not create environment!
echo Please provide the following parameters:
echo  - env-name:   name of the environment (e.g. tensorflow)
echo  - py-version: the python version to use (e.g. 3.7)
echo Example usage:
echo  %~nx0 tensorflow 3.7
goto :EOF

:runscript

:: set variables
set env-name=%1
set py-version=%2
set display-name="%env-name% (Python %py-version%)"

:: create and activate environment
cmd /c conda create -n %env-name% -y python=%py-version%
call conda activate %env-name%

:: install nb extensions and register ipykernel
cmd /c conda install -y nb_conda
cmd /c python -m ipykernel install --user --name %env-name% --display-name %display-name%