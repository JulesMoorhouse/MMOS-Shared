@echo off
cls
call BuildSingle.bat MAdmin.exe MAdmin.txt ..\..\Admin\MAdmin.vbp ..\..\Admin\
call BuildSingle.bat Mmos.exe Mmos.txt ..\..\Client\MindwarpMailOrder.vbp ..\..\Client\
call BuildSingle.bat Loader.exe Loader.txt ..\..\Loader\Loader.vbp ..\..\Loader\
call BuildSingle.bat Minder.exe Minder.txt ..\..\Minder\Minder.vbp ..\..\Minder\
call BuildSingle.bat MReps.exe MReps.txt ..\..\Reps\MReps.vbp ..\..\Reps\
call BuildSingle.bat Configure.Configure Lite.txt ..\..\Configure\Configure.vbp ..\..\Configure\

echo .

echo If you'd like to copy some of these files to the databases 
echo folder (for testing purposes) press any key

echo .

pause

copy ..\..\Loader\Loader.exe ..\Databases\Loader.exe
copy ..\..\Admin\MAdmin.exe ..\Databases\MAdmin.exe
copy ..\..\Client\Mmos.exe ..\Databases\Mmos.exe
copy ..\..\Reps\MReps.exe ..\Databases\MReps.exe
copy ..\..\Minder\Minder.exe ..\Databases\Minder.exe

pause