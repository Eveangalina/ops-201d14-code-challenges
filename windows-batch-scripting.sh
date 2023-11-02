
# quietly running commands as they execute
@echo off

# enable delayed environment variable expansion

setlocal enabledelayedexpansion

# source path being input into its variable
set /p sourcePath=Enter the source folder path:
# destination path being input in to its variable
set /p destinationPath=Enter the destination folder path:

# error message to display if no path exists
if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)
if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)
# robocopy is sending over files from the source to the destination
robocopy "!sourcePath!" "!destinationPath!" /E
# error message to display if robocody is unsuccessful
if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)
# end of the script
:end
endlocal
