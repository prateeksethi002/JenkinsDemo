@echo off 
setlocal 

CALL C:\Progra~1\IBM\IIB\10.0.0.6\server\bin\mqsiprofile.cmd 

set PRODUCT_PATH=%~dp0.. 

if %1""=="" goto noparam 

SET parm8=%8 
SET parm9=%9 
SHIFT /8 
SET parm10=%9 
SHIFT /8 
SET parm11=%9 
SHIFT /8 
SET parm12=%9 
SHIFT /8 
SET parm13=%9 
SHIFT /8 
SET parm14=%9 
SHIFT /8 
SET parm15=%9 
SHIFT /8 
SET parm16=%9 
SHIFT /8 
SET parm17=%9 
SHIFT /8 
SET parm18=%9 
SHIFT /8 
SET parm19=%9 
SHIFT /8 
SET parm20=%9 

"%MQSI_JREPATH%\bin\java" com.ibm.broker.config.util.Deploy %1 %2 %3 %4 %5 %6 %7 %parm8% %parm9% %parm10% %parm11% %parm12% %parm13% %parm14% %parm15% %parm16% %parm17% %parm18% %parm19% %parm20% 
goto end 

:noparam 

"%MQSI_JREPATH%\bin\java" com.ibm.broker.config.util.Deploy -? 

:end 
endlocal