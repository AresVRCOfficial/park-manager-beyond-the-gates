@echo off
setlocal

:: Prompt the user for a commit message
set /p commitMessage=Enter commit message: 

:: Ensure the commit message is not empty
if "%commitMessage%"=="" (
    echo Commit message cannot be empty.
    goto end
)

:: Add all changes to the staging area
git add .

:: Commit the changes with the user's message
git commit -m "%commitMessage%"

:: Push the changes to the main branch
git push origin main

:end
echo Update complete.
pause
endlocal