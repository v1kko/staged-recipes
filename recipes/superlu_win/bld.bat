mkdir build
if errorlevel 1 exit 1
cd build
if errorlevel 1 exit 1

cmake --build .. --target install ^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
    -DCMAKE_INSTALL_LIBDIR="%PREFIX%/lib" ^
    -DCMAKE_C_FLAGS="%CMAKE_C_FLAGS% -fPIC" ^
    -Denable_blaslib=OFF ^
    -Denable_single=ON ^
    -Denable_double=ON ^
    -Denable_complex16=ON ^
    -Denable_complex=ON ^
    -Denable_tests=ON ^
    -Denable_doc=OFF ^
    -Denable_matlab_mex=OFF ^
    -DXSDK_ENABLE_Fortran=FALSE
if errorlevel 1 exit 1
