###########################################################################
# Copyright 1994-2018 The MathWorks, Inc.
#
# File    : m1_userlib_makefile.tmf   
###########################################################################

#------------------------ Macros read by make_rtw ------------------------------
#
# The following macros are read by the build procedure:
#
#  MAKECMD         - This is the command used to invoke the make utility
#  HOST            - What platform this template makefile is targeted for
#                    (i.e. PC or UNIX)
#  BUILD           - Invoke make from the build procedure (yes/no)?
#  SYS_TARGET_FILE - Name of system target file.

MAKECMD         = "%MATLAB%\bin\win64\gmake"
SHELL           = cmd
HOST            = PC
BUILD           = yes
SYS_TARGET_FILE = any
COMPILER_TOOL_CHAIN = gcc

# Opt in to simplified format by specifying compatible Toolchain
#TOOLCHAIN_NAME = "powerpc-eabispe-gcc.exe | gmake (64-bit Windows)"

MAKEFILE_FILESEP = /

#---------------------- Tokens expanded by make_rtw ----------------------------
#
# The following tokens, when wrapped with "|>" and "<|" are expanded by the
# build procedure.
#
#  MODEL_NAME          - Name of the Simulink block diagram
#  MODEL_MODULES       - Any additional generated source modules
#  MAKEFILE_NAME       - Name of makefile created from template makefile <model>.mk
#  MATLAB_ROOT         - Path to where MATLAB is installed.
#  MATLAB_BIN          - Path to MATLAB executable.
#  S_FUNCTIONS         - List of additional S-function modules.
#  S_FUNCTIONS_LIB     - List of S-functions libraries to link. 
#  NUMST               - Number of sample times
#  NCSTATES            - Number of continuous states
#  BUILDARGS           - Options passed in at the command line.
#  MULTITASKING        - yes (1) or no (0): Is solver mode multitasking
#  INTEGER_CODE        - yes (1) or no (0): Is generated code purely integer
#  MAT_FILE            - yes (1) or no (0): Should mat file logging be done,
#                        if 0, the generated code runs indefinitely
#  MULTI_INSTANCE_CODE - Is the generated code multi instantiable (1/0)?
#  SHRLIBTARGET        - Is this build intended for generation of a shared library instead 
#                        of executable (1/0)?
#  MAKEFILEBUILDER_TGT - Is this build performed by the MakefileBuilder class
#                        e.g. to create a PIL executable?
#  STANDALONE_SUPPRESS_EXE - Build the standalone target but only create object code modules 
#                            and do not build an executable

MODEL                = SimpleMath
MODULES              = SimpleMath_def.c
MAKEFILE             = SimpleMath.mk
MATLAB_ROOT          = D:/Program Files/MATLAB/R2023a
ALT_MATLAB_ROOT      = D:/Program Files/MATLAB/R2023a
MATLAB_BIN           = D:/Program Files/MATLAB/R2023a/bin
ALT_MATLAB_BIN       = D:/Program Files/MATLAB/R2023a/bin
MASTER_ANCHOR_DIR    = 
START_DIR            = D:/PittFSAE/2024/Firmware Dev
S_FUNCTIONS          = 
S_FUNCTIONS_LIB      = 
NUMST                = 1
NCSTATES             = 0
BUILDARGS            = MATLAB_ROOT=%MATLAB_ROOT% ALT_MATLAB_ROOT=%ALT_MATLAB_ROOT% MATLAB_BIN=%MATLAB_BIN% ALT_MATLAB_BIN=%ALT_MATLAB_BIN%  GENERATE_ERT_S_FUNCTION=0 GENERATE_ASAP2=0 EXT_MODE=0 EXTMODE_STATIC_ALLOC=0 EXTMODE_STATIC_ALLOC_SIZE=1000000 EXTMODE_TRANSPORT=0 TMW_EXTMODE_TESTING=0 InstallUserLibrary=1 BuildM1Package=0 OPTS="-DTID01EQ=0"
MULTITASKING         = 0
INTEGER_CODE         = 0
MAT_FILE             = 0
ALLOCATIONFCN        = 0
ONESTEPFCN           = 1
TERMFCN              = 1
MULTI_INSTANCE_CODE  = 0
CLASSIC_INTERFACE    = 0
MODELREFS            = 
#DONT generate sample main
GEN_SAMPLE_MAIN      = 0
SHRLIBTARGET         = 0
MAKEFILEBUILDER_TGT  = 0
ENABLE_SLEXEC_SSBRIDGE  = 0
STANDALONE_SUPPRESS_EXE = 0
OPTIMIZATION_FLAGS      = 
ADDITIONAL_LDFLAGS      = 
DEFINES_CUSTOM          = 
SYSTEM_LIBS             = 
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 0

#--------------------------- MoTeC Variables ---------------------------------
MOTEC_INT_DIR			= C:\PROGRA~1\MoTeC\M1\Matlab\1.4
M1SDK_MAJOR 			= 01
M1SDK_MINOR 			= 04
M1SDK_RELEASE 			= 00
M1SDK_BUILD 			= 0093
USERLIB_MAJOR			= 01
USERLIB_MINOR			= 00
USERLIB_RELEASE			= 00

# The version of build we are using
M1BUILD_VERSION			= 1.4

# grab the registry key. Returns in the form <key> <value name> <value type> <value>
M1BUILD_INSTALLDIRBITS	=  $(shell reg query "HKLM\SOFTWARE\MoTeC\M1\Build\$(M1BUILD_VERSION)"  /v InstallDir /reg:64)

# get rid of spaces in response. Hope there are no double spaces in the path
M1BUILD_INSTALLDIRBITSSTRIPPED = $(strip $(M1BUILD_INSTALLDIRBITS))

# Grab the path (the fourth item)
M1BUILD_INSTALLDIRWORDS	=  $(wordlist 4, 1000, $(M1BUILD_INSTALLDIRBITSSTRIPPED))

# Put the words back togeher
M1BUILD_INSTALLDIRCOMB = $(M1BUILD_INSTALLDIRWORDS)

# Add the actual target. This will always be here. When the version changes, this and the one above changes
M1BUILD_INSTALLDIR = $(M1BUILD_INSTALLDIRCOMB)M1\Build\$(M1BUILD_VERSION)

#get version
M1BUILD_VERSIONBITS	=  $(shell reg query "HKLM\SOFTWARE\MoTeC\M1\Build\$(M1BUILD_VERSION)"  /v Version /reg:64)
M1BUILD_INSTALLVERBITSSTRIPPED = $(strip $(M1BUILD_VERSIONBITS))
M1BUILD_INSTALL_VERSION = $(wordlist 4, 1000, $(M1BUILD_INSTALLVERBITSSTRIPPED))

M1BUILD_INTEG_TOOLBITS	=  $(shell reg query "HKLM\SOFTWARE\MoTeC\M1\Integration Tool\$(M1BUILD_VERSION)"  /v Version /reg:64)
M1BUILD_INTEG_TOOLVERBITSSTRIPPED = $(strip $(M1BUILD_INTEG_TOOLBITS))
M1BUILD_INTEG_TOOL_VERSION = $(wordlist 5, 1000, $(M1BUILD_INTEG_TOOLVERBITSSTRIPPED))

#--------------------------- Model and reference models -----------------------
MODELLIB                  = 
MODELREF_LINK_LIBS        =  $(S_FUNCTIONS_LIB)
MODELREF_LINK_RSPFILE     = SimpleMath_ref.rsp
MODELREF_INC_PATH         = 
RELATIVE_PATH_TO_ANCHOR   = ..
# NONE: standalone, SIM: modelref sim, RTW: modelref coder target
MODELREF_TARGET_TYPE       = NONE
MODELREF_SFCN_SUFFIX       = _msf
ISPROTECTINGMODEL          = 

#-- In the case when directory name contains space ---
ifneq ($(MATLAB_ROOT),$(ALT_MATLAB_ROOT))
MATLAB_ROOT := $(ALT_MATLAB_ROOT)
endif
ifneq ($(MATLAB_BIN),$(ALT_MATLAB_BIN))
MATLAB_BIN := $(ALT_MATLAB_BIN)
endif

SPACE :=
ESC_SPACE := $(SPACE) $(SPACE)
MOTEC_INT_DIR_TEMP := $(subst $(ESC_SPACE),\$(ESC_SPACE),$(MOTEC_INT_DIR))
TABLE_C := $(MOTEC_INT_DIR_TEMP)\m1_table\src\m1_table.c

#--------------------------- Path Items ----------------------------------------

MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MKFILE_DIR := $(dir $(MKFILE_PATH))

#--------------------------- Tool Specifications -------------------------------
M1CCPATH = $(M1BUILD_INSTALLDIR)\Compiler\5.1.0\bin
CC_PATH = $(M1CCPATH)\powerpc-eabispe-gcc
AR_PATH = $(M1CCPATH)\powerpc-eabispe-ar
CC = "$(CC_PATH)"
AR = "$(AR_PATH)"
MoTeC_AR = "$(M1BUILD_INSTALLDIR)\M1Build.exe"

CMD_FILE             = $(MODEL).rsp


#------------------------------ Output Path -----------------------------------

M1AR_DIR = $(MODEL).$(USERLIB_MAJOR).$(USERLIB_MINOR).$(USERLIB_RELEASE)
ifeq ($(MODELREF_TARGET_TYPE), NONE)
PRODUCT = $(MODEL).$(USERLIB_MAJOR).$(USERLIB_MINOR).$(USERLIB_RELEASE).m1lib-archive
PRODUCT_TYPE = "M1 User Library"
else
PRODUCT = $(MODELLIB)
PRODUCT_TYPE = "Static Library"
endif
BUILD_TYPE = "M1"

INFO_XML = ^<?xml version="1.0"?^> \
	^<UserLibrarySet Locale="English_Australia.1252" DefaultLocale="C" Name="$(MODEL)" VersionMajor="$(USERLIB_MAJOR)" VersionMinor="$(USERLIB_MINOR)" VersionRelease="$(USERLIB_RELEASE)"^>	\
	^<System VersionMajor="$(M1SDK_MAJOR)" VersionMinor="$(M1SDK_MINOR)" VersionRelease="$(M1SDK_RELEASE)" VersionBuild="$(M1SDK_BUILD)"/^>	\
	^</UserLibrarySet^>


#------------------------------ Include Path -----------------------------------

SDK_INCLUDES=-I"$(ProgramData)\MoTeC\M1\Build\SDK\$(M1SDK_MAJOR).$(M1SDK_MINOR).$(M1SDK_RELEASE).$(M1SDK_BUILD)\include"
INTEGRATION_INCLUDES=-I"$(MOTEC_INT_DIR)"
TABLE_INCLUDES=-I"$(MOTEC_INT_DIR)\m1_table\include"

# Additional includes 

ADD_INCLUDES = \
	-I"$(START_DIR)" \
	-I"$(START_DIR)/SimpleMath_m1_rtw" \
	-I"$(MATLAB_ROOT)/extern/include" \
	-I"$(MATLAB_ROOT)/simulink/include" \
	-I"$(MATLAB_ROOT)/rtw/c/src" \
	-I"$(MATLAB_ROOT)/rtw/c/src/ext_mode/common" \
	-I"$(MATLAB_ROOT)/rtw/c/ert" \


# see COMPILER_INCLUDES from lcctool.mak

INCLUDES = -I. -I$(RELATIVE_PATH_TO_ANCHOR) $(ADD_INCLUDES) $(SDK_INCLUDES) $(INTEGRATION_INCLUDES) $(TABLE_INCLUDES)\
	$(COMPILER_INCLUDES) $(USER_INCLUDES) \
	$(MODELREF_INC_PATH) \

#-------------------------------- C Flags --------------------------------------

# Optimization Options
OPT_OPTS = $(DEFAULT_OPT_OPTS)

# General User Options
OPTS =

# Compiler options, etc:
CC_OPTS = -mspe=no -fshort-double -Os -Wall

# Add the ECU BOARD to avoid the problem in system.h
CC_REQ_DEFINES = -D_ECU_SOURCE -D__BIG_ENDIAN_BITFIELD -D__BIG_ENDIAN

CFLAGS = $(DEFAULT_CFLAGS) $(CC_OPTS) $(DEFINES_CUSTOM) $(CC_REQ_DEFINES) $(INCLUDES)


#----------------------------- Source Files ------------------------------------
ADD_SRCS =

SRCS = $(ADD_SRCS) $(MODULES)

ifneq ($(MODELREF_TARGET_TYPE), SIM)
  SRCS  += $(S_FUNCTIONS)
endif

ifeq ($(MODELREF_TARGET_TYPE), NONE)
	USER_SRCS = $(MODEL).c
else
	USER_SRCS = 
endif

ALL_SRCS = $(SRCS) $(USER_SRCS)


# mapping the C to an O. The O will go in the root dir
RELOBJS   = $(ALL_SRCS:.c=.o)

# the compiled O files.
OBJS      = $(notdir $(RELOBJS))

# the objects coming out of libraries.
LIBOBS=

#--------------------------------- Rules ---------------------------------------
.PHONY : info all build buildobj clean prebuild download execute $(MODELREF_LINK_LIBS) updobj

all : build 
	@echo "### Successfully generated all binary outputs."

ifeq ($(MODELREF_TARGET_TYPE), NONE)
build : prebuild $(PRODUCT) 
	@echo "### Created: $(PRODUCT)"

prebuild : $(MODELREF_LINK_LIBS) updobj info
	@echo "### Creating User Library Archive "$(PRODUCT)" ..."
	@echo "###   M1Build: $(M1BUILD_INSTALL_VERSION)"
	@echo "###   Integration Tool: $(M1BUILD_INTEG_TOOL_VERSION)"
else
build : clean prebuild $(PRODUCT) 
	@echo "### Created: $(PRODUCT)"

prebuild : 
	@echo "### Creating Shared Library "$(PRODUCT)" ..."
endif

buildobj : prebuild $(OBJS) $(PREBUILT_OBJS)
	@echo "### Successfully generated all binary outputs. (buildobj)"

updobj:
	$(eval OBJS += $(LIBOBJS))

download : build

execute : build
	@echo "### nothing for "Execute" ..."
	@echo "### Done invoking postbuild tool."

#---------------------
# SOURCE-TO-OBJECT
#---------------------
 m1_table.o : $(TABLE_C)
	$(CC) -c -MD -MP $(CFLAGS) -o "$(notdir $@)" "$^"

%.o : %.c
	$(CC) -c -MD -MP $(CFLAGS) -o "$(notdir $@)" "$<"

%.o : $(MATLAB_ROOT)/rtw/c/src/%.c
	$(CC) -c -MD -MP $(CFLAGS) -o "$(notdir $@)" "$<"

%.o : $(MATLAB_ROOT)/simulink/src/%.c
	$(CC) -c -MD -MP $(CFLAGS) -o "$(notdir $@)" "$<"


	
# Libraries:

$(MODELREF_LINK_LIBS) :
		@echo $@
		$(eval LIBOBJS += $(shell $(AR) -t $@))
		$(AR) -x $@	

$(MODEL).a : $(RELOBJS) $(MODELREF_LINK_LIBS)

	$(AR) rcs $@ $(OBJS)
	copy $@ $(MODEL)_rtwlib.lib

libdir:
	if EXIST $(M1AR_DIR) rmdir /s /q $(M1AR_DIR)
	mkdir $(M1AR_DIR)

$(M1AR_DIR)/info.xml : libdir
	@echo $(INFO_XML) >>$@

ifeq ($(MODELREF_TARGET_TYPE), NONE)
$(PRODUCT) : libdir $(MODEL).a $(M1AR_DIR)/info.xml
	mkdir $(M1AR_DIR)\lib
	mkdir $(M1AR_DIR)\include
	copy $(MODEL).a $(M1AR_DIR)\lib
	copy $(MODEL)_def.h $(M1AR_DIR)\include
	$(MoTeC_AR) --create-userlib-archive "$(M1AR_DIR)" --userlib-archive "$@"
	@echo "### Created: $(PRODUCT)"
else
$(PRODUCT) : $(RELOBJS)
	$(AR) rcs $@ $(OBJS)
	@echo "### Created: $(PRODUCT)"
endif

# $(OBJS) : $(MAKEFILE) rtw_proj.tmw

info : 
	@echo ""
	@echo "########### Info ####################"
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### M1Build = $(M1BUILD_INSTALL_VERSION)"
	@echo "### Integration Tool = $(M1BUILD_INTEG_TOOL_VERSION)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### MODULES = $(MODULES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(OBJS)"
	@echo "### S_FUNCTIONS_LIB = $(S_FUNCTIONS_LIB)"
	@echo "### LIBOBJS = $(LIBOBJS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"
	@echo "### MoTeC Root dir = $(MOTEC_INT_DIR)"
	@echo "### Start Dir = $(START_DIR)"
	@echo "### Make path = $(MKFILE_PATH)"
	@echo "### Make dir = $(MKFILE_DIR)"
	@echo "### Min SDK Version = $(M1SDK_MAJOR).$(M1SDK_MINOR).$(M1SDK_RELEASE).$(M1SDK_BUILD)"
	@echo "### User Library Version = $(USERLIB_MAJOR).$(USERLIB_MINOR).$(USERLIB_RELEASE)"
	@echo "### M1 Build Install Dir = $(M1BUILD_INSTALLDIR)"
	@echo "### MODELREFS = $(MODELREFS)"
	@echo "### MODELLIB = $(MODELLIB)"
	@echo "### MODELREF_LINK_LIBS = $(MODELREF_LINK_LIBS)"
	@echo "### MODELREF_INC_PATH = $(MODELREF_INC_PATH)"
	@echo "### RELATIVE_PATH_TO_ANCHOR= $(RELATIVE_PATH_TO_ANCHOR)"
	@echo "### MODELREF_TARGET_TYPE = $(MODELREF_TARGET_TYPE)"
	@echo "### ISPROTECTINGMODEL = $(ISPROTECTINGMODEL)"
	@echo "######################################"
	@echo ""


ifeq ($(MODELREF_TARGET_TYPE), NONE)
clean : 
	@echo "### Deleting all derived files..."
	if exist $(MODEL).a del /s /q $(MODEL).a
	if exist $(PRODUCT) del /s /q $(PRODUCT)
	if EXIST $(M1AR_DIR) rmdir /s /q $(M1AR_DIR)
	del /s /q *.o	
	@echo "### Deleted all derived files."
else
clean : 
	@echo "### Deleting all derived files..."
	if exist $(PRODUCT) del /s /q $(PRODUCT)
	del /s /q *.o	
	@echo "### Deleted all derived files."
endif
