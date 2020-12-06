@echo off

:: check if two but not three parameters are provided
If not "%~2"=="" if "%~3"=="" goto runscript
echo ERROR: This script requires the following parameters:
echo  - env-name   (the name of the environment, e.g. tensorflow)
echo  - py-version (the desired python version, e.g. 3.7)
echo Example usage:
echo  %~nx0 tensorflow 3.7
goto :EOF


:runscript

:: set variables
set env-name=%1
set py-version=%2

:: create and activate environment
call conda create -y --name %env-name% python=%py-version%
call conda activate %env-name%

:: install nb extensions and register ipykernel
cmd /c conda install -y nb_conda
cmd /c python -m ipykernel install --user --name %env-name% --display-name "Python %py-version% (%env-name%)"

:: deactivate environment and check the list of environments
cmd /c conda env list

echo Environment %env-name% (Python %py-version%) successfully created
