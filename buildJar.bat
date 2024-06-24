set nomSrcTxt=java_files_list.txt
set lib=C:\tomcat\lib
call .\findJavaSrc
set src=
for /f "delims=" %%i in (%nomSrcTxt%) do set src=%src% %%i

javac -cp "%lib%\*" -d . %src%
jar -cf winter.jar .\mg
@REM del %nomSrcTxt%
@REM rmdir /S /Q mg