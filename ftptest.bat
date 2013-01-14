@echo Testing ftp capabilities.   Please wait....
@ftp -d -s:ftptest.bat  > ftp.log
goto done
open commstar.cibcwm.com  
cibcrem
mapleleafs
prompt
bin
literal pasv
cd replication
cd testscript
put ftptest.bat
rename ftptest.bat file.1
get file.1
del file.1
put file.1
ls
rename file.1 file.2
get file.2
del file.2
put file.2
ls
rename file.2 file.3
get file.3
del file.3
put file.3
ls
rename file.3 file.4
get file.4
del file.4
put file.4
ls
rename file.4 file.5
get file.5
del file.5
put file.5
ls
rename file.5 file.6
del file.6
get bigfile
bye
:done 



rem Include directory in log file
dir >> ftp.log

rem Retreive IP information
ipconfig -all >> ftp.log
route print >> ftp.log

del file.1
del file.2
del file.3
del file.4
del file.5
del bigfile

