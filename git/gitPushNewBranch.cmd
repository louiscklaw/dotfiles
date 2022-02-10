
SET _c=
FOR /F "tokens=4 delims= " %%G IN ('git branch') DO (
    IF DEFINED _c <nul set /p z=", "
    <nul set /p z=%%G
    SET _c=1
)


git branch | findstr *
: git push --set-upstream origin %*
