
set MATLAB=D:\Program Files\MATLAB\R2023a


call  "\\RaheelFarouk-L\D$\Program Files\MATLAB\R2023a\bin\win64\checkMATLABRootForDriveMap.exe" "\\RaheelFarouk-L\D$\Program Files\MATLAB\R2023a"  > mlEnv.txt
for /f %%a in (mlEnv.txt) do set "%%a"\n

"%MATLAB%\bin\win64\gmake" -f SimpleMath.mk MATLAB_ROOT=%MATLAB_ROOT% ALT_MATLAB_ROOT=%ALT_MATLAB_ROOT% MATLAB_BIN=%MATLAB_BIN% ALT_MATLAB_BIN=%ALT_MATLAB_BIN%  GENERATE_ERT_S_FUNCTION=0 GENERATE_ASAP2=0 EXT_MODE=0 EXTMODE_STATIC_ALLOC=0 EXTMODE_STATIC_ALLOC_SIZE=1000000 EXTMODE_TRANSPORT=0 TMW_EXTMODE_TESTING=0 InstallUserLibrary=1 BuildM1Package=0 OPTS="-DTID01EQ=0"
