LAB_NUMBER_VARIANT := LabN5V5
LIBRARY_NAME := ${LAB_NUMBER_VARIANT}_lib
MAIN_NAME := ${LAB_NUMBER_VARIANT}_main
EXECUTABLES = ${LIBRARY_NAME}.exe

build_dynamic_library:
	ml /coff /c /Cp  ${LIBRARY_NAME}.asm
	link /dll /subsystem:windows /def:${LIBRARY_NAME}.def ${LIBRARY_NAME}.obj 

build_main:
	ml /coff /c /Cp ${MAIN_NAME}.asm

build: build_dynamic_library build_main
	link /subsystem:windows ${MAIN_NAME}.obj ${LIBRARY_NAME}.lib
	
clean:
	-del -fR ${MAIN_NAME}.obj
	-del -fR ${MAIN_NAME}.exe
	-del -fR ${LIBRARY_NAME}.obj
	-del -fR ${LIBRARY_NAME}.exp
	-del -fR ${LIBRARY_NAME}.dll


debug:
	ollydbg ${MAIN_NAME}