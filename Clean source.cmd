@Echo Off


Rem Andry Smirnov
Rem (c) SKB PSIS, 2022
Rem Lastmod: 25.10.2022


Echo.
Echo [1m[97mScript for remove temporary files[0m
Echo.


Set LOG_FILE=build.log
Set BIN_FOLDER=bin
Set LIB_FOLDER=lib
Set SOURCE_FOLDER=source
Set BACKUP_FOLDER=%SOURCE_FOLDER%\backup
Set HISTORY_FOLDER=%SOURCE_FOLDER%\__history


Echo [3mClear folders...[0m

Del /S /Q /F %BIN_FOLDER% > %LOG_FILE%
RmDir /S /Q %BIN_FOLDER% >> %LOG_FILE%

Del /S /Q /F %LIB_FOLDER% >> %LOG_FILE%
RmDir /S /Q %LIB_FOLDER% >> %LOG_FILE%

Del /S /Q /F %BACKUP_FOLDER% >> %LOG_FILE%
RmDir /S /Q %BACKUP_FOLDER% >> %LOG_FILE%

Del /S /Q /F %HISTORY_FOLDER% >> %LOG_FILE%
RmDir /S /Q %HISTORY_FOLDER% >> %LOG_FILE%


Rem Clear source folder

If Exist %SOURCE_FOLDER% (

    PushD %SOURCE_FOLDER%

    Echo [1mRemove temporary files in %SOURCE_FOLDER% folder[0m
    For /R %%i In (C) Do (
        If Exist "%%~dpi*.~*" (
            Echo [3m  Remove [1m%%~dpi*.~*[0m
            Del "%%~dpi*.~*"
        )
        If Exist "%%~dpi*.bak" (
            Echo [3m  Remove [1m%%~dpi*.bak[0m
            Del "%%~dpi*.bak"
        )
        If Exist "%%~dpi*.ddp" (
            Echo [3m  Remove [1m%%~dpi*.ddp[0m
            Del "%%~dpi*.ddp"
        )
        If Exist "%%~dpi*.dcu" (
            Echo [3m  Remove [1m%%~dpi*.dcu[0m
            Del "%%~dpi*.dcu"
        )
        If Exist "%%~dpi*.ppu" (
            Echo [3m  Remove [1m%%~dpi*.ppu[0m
            Del "%%~dpi*.dcu"
        )
        If Exist "%%~dpi*.cbk" (
            Echo [3m  Remove [1m%%~dpi*.cbk[0m
            Del "%%~dpi*.cbk"
        )
    ) 
    Echo [1m[92mDone[0m
    Echo.

    PopD

)


Echo [1m[92mAll task done[0m
Echo.
