@echo off

echo %DATE% %TIME% >> log.txt
echo This is a log message >> log.txt

echo bu birinci argument: %1 >> log.txt

echo bu ikinci argument: %2 >> log.txt

echo bu ucuncu argument: %3 >> log.txt

echo bu dorduncu argument: %4 >> log.txt

:add
  echo Enter the first number:
  set /p num1=
  echo Enter the second number:
  set /p num2=
  set /a sum=%num1% + %num2%
  echo The sum is %sum%. >> log.txt
 rem  goto :eof

rem add